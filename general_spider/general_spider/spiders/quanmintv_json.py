

# This script is not in used because quanmin.tv use json & ajax.
#
#

from BasicSpiderConfig import ExRule
from collections import OrderedDict
from misc.common import *
from misc.log import *

class Config:

    list_json_rules = {
        'room_name': 'title',
        'anchor': 'nick',
        'audience_count': 'view',
        'tag': 'category_name',
        'url': 'uid', # use star/<uid>
        # 'platform': ['quanmintv'],
        # 'platform_prefix_url': ['http://www.quanmin.tv/'],
    }

    # ex_rule = ExRule('http://www.quanmin.tv/game/all$', list_css_rules=list_css_rules)

    name='quanmintv'
    allowed_domains=['quanmin.tv']
    start_urls=['http://www.quanmin.tv/json/play/list.json']
    ex_rules = []
    follow = False

    @staticmethod
    def update_composed_pk(item):
        # audience_count = [Config.deal_human_readable_numbers(i) for i in item['audience_count']]
        print(item)
        item['platform_anchor'] = [item['platform'][0] + '+' + item['anchor'][0]]

    # @staticmethod
    # def preprocess_json_item(ol):
    #     # process_items_from_list(oi, Config.update_audience_count)
    #     for i in ol:
    #         item = {}
    #         for k, v in Config.list_json_rules:
    #             item[k] = [i[v]]
    #         item[k] = map(lambda x: '/star/' + x, item[k])
    #         item['platform'] = ['quanmintv']
    #         item['platform_prefix_url'] = ['http://www.quanmin.tv/']
    #         process_items_from_list(i, Config.update_composed_pk)

    @staticmethod
    def preprocess_json_items(list_item):
        # import pdb; pdb.set_trace()
        ol = list_item['data']

        items = []
        # process_items_from_list(oi, Config.update_audience_count)
        for i in ol:
            item = {}
            for k, v in Config.list_json_rules.iteritems():
                item[k] = [i[v]]
            item[k] = map(lambda x: '/star/' + x, item[k])
            item['platform'] = ['quanmintv']
            item['platform_prefix_url'] = ['http://www.quanmin.tv/']
            Config.update_composed_pk(item)

            items.append(item)

        return {'items': items}
