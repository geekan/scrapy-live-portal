# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

import redis


from scrapy import signals


import json
import codecs
from collections import OrderedDict
import MySQLdb
from misc.log import *
from misc.common import *
from spiders.spider_helper import *
import os


class ImageDownloadPipeline(object):

    def __init__(self):
        pass # mkdir

    # process big item as default.
    def process_item(self, item, spider):
        info('## image pipeline')

        if not os.path.exists('./images'):
            os.makedirs('./images')

        oi = OrderedDict(item)
        process_items_from_list(item, update_item_video_img_local_path)
        process_items_from_list(oi, download_image)
        return oi

    def close_spider(self, spider):
        pass


class TXTWithEncodingPipeline(object):

    def __init__(self):
        self.file = codecs.open('data_utf8.txt', 'w', encoding='utf-8')

    # process big item as default.
    def process_item(self, item, spider):
        info('## txt pipeline 1')
        oi = OrderedDict(item)
        items = extract_items_from_list(oi)
        for li in items:
            line = '\t'.join(li.values()) + '\n'
            self.file.write(line)
        return oi

    def close_spider(self, spider):
        self.file.close()


class JsonWithEncodingPipeline(object):

    def __init__(self):
        self.file = codecs.open('data_utf8.json', 'w', encoding='utf-8')

    def process_item(self, item, spider):
        info('## json pipeline 1')
        line = json.dumps(OrderedDict(item), ensure_ascii=False, sort_keys=False) + "\n"
        self.file.write(line)
        return item

    def close_spider(self, spider):
        self.file.close()


class RedisPipeline(object):

    def __init__(self):
        self.r = redis.StrictRedis(host='localhost', port=6379)

    def process_item(self, item, spider):
        info('## redis pipeline 1')
        if not item['id']:
            print 'no id item!!'

        str_recorded_item = self.r.get(item['id'])
        final_item = None
        if str_recorded_item is None:
            final_item = item
        else:
            ritem = eval(self.r.get(item['id']))
            final_item = dict(item.items() + ritem.items())
        self.r.set(item['id'], final_item)
        return item

    def close_spider(self, spider):
        return

'''
drop table live_portal_room;
create table live_portal_room( \
    platform_anchor varchar(255) NOT NULL PRIMARY KEY, \
    anchor varchar(128) NOT NULL, \
    tag varchar(32), \
    room_name varchar(255), \
    url varchar(255), \
    audience_count bigint, \
    platform varchar(64), \
    platform_prefix_url varchar(128), \
    modification_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP \
);

select * from live_portal_room order by audience_count asc;
select anchor,tag,room_name,url,audience_count,platform from live_portal_room order by audience_count asc;
'''
class MySQLWithEncodingPipeline(object):

    def __init__(self):
        # self.conn = MySQLdb.connect(user='user', 'passwd', 'dbname', 'host', charset="utf8", use_unicode=True)
        self.conn = MySQLdb.connect(user='root', passwd='', db='live_portal', host='localhost', charset="utf8", use_unicode=True)
        self.cursor = self.conn.cursor()

    def process_item(self, item, spider):
        info('## mysql pipeline 1')

        oi = OrderedDict(item)
        items = extract_items_from_list(oi)

        try:
            cols_to_update = ['anchor', 'tag', 'room_name', 'url', 'audience_count', 'platform', 'platform_prefix_url',
                              'video_img_local_path']
            cols = ['platform_anchor'] + cols_to_update
            sql_values = ','.join([
                                    '(' + ','.join(['\''+item[i]+'\'' for i in cols]) + ')'
                                    for item in items
                                ])

            sql_update = ','.join([col + '=VALUES(' + col + ')' for col in cols_to_update])
            sql = """INSERT INTO live_portal_room (%s) VALUES %s""" % (','.join(cols), sql_values) + \
                  ''' ON DUPLICATE KEY UPDATE %s''' % sql_update
            info('## mysql pipeline 2')
            info(sql)

            # (author, tag, room_name, url, people_count)
            r = self.cursor.execute(sql)
            info('sql execute result: ' + str(r))
            # item['author'].encode('utf-8'),
            # item['tag'].encode('utf-8'),
            # item['room_name'].encode('utf-8'),
            # item['url'].encode('utf-8'),
            # item['people_count'].encode('utf-8'),

            self.conn.commit()


        except MySQLdb.Error, e:
            print "Error %d: %s" % (e.args[0], e.args[1])


        return oi

    def close_spider(self, spider):
        return

