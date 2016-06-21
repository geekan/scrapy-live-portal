#coding: utf-8

from BasicSpiderConfig import ExRule
from collections import OrderedDict
from misc.common import *
from misc.log import *
import re

class Config:

    list_css_rules = { 
        '.video-list .video-list-item': {
            'room_name': '#js-video-all .clickstat::text',
            'anchor': '.nick::text',
            'audience_count': '.js-num::text',
            'tag': '.fr a::text',
            'url': 'a.video-info::attr(href)',
            'platform': ['huyatv'],
            'platform_prefix_url': ['http://www.huya.com/'],
        }   
    }

    ex_rule = ExRule('http://www.huya.com/l$', list_css_rules=list_css_rules)

    name='huyatv'
    allowed_domains=['huya.com']
    start_urls=['http://www.huya.com/l']
    ex_rules = []
    follow = False

    @staticmethod
    def deal_human_readable_numbers(hrn=''):
        numbers = re.findall(r'\d+\.?\d*', hrn)
        if len(numbers) == 0:
            return 0
        elif len(numbers) > 1:
            warn('suspect numbers:'+str(numbers))

        number = float(numbers[0])

        # FIXME magic logic. Consider to add log here.
        if hrn.endswith(u'万'):
            number = (number * 10000.0)
        return str(int(number))

    @staticmethod
    def update_audience_count(item):
        if type(item['audience_count']) != list:
            return

        audience_count = [Config.deal_human_readable_numbers(i) for i in item['audience_count']]
        item['audience_count'] = audience_count

    @staticmethod
    def update_composed_pk(item):
        # audience_count = [Config.deal_human_readable_numbers(i) for i in item['audience_count']]
        item['platform_anchor'] = [item['platform'][0] + '+' + item['anchor'][0]]

    @staticmethod
    def use_relative_url(item):
        # audience_count = [Config.deal_human_readable_numbers(i) for i in item['audience_count']]
        item['url'] = ['/' + item['url'][0].split('/')[-1]]

    @staticmethod
    def preprocess_item(list_item):
        oi = OrderedDict(list_item)

        process_items_from_list(oi, Config.update_audience_count)
        process_items_from_list(oi, Config.update_composed_pk)
        process_items_from_list(oi, Config.use_relative_url)

        return oi
