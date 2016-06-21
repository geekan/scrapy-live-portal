
from BasicSpiderConfig import ExRule
from collections import OrderedDict
from misc.common import *
from misc.log import *

class Config:

    list_css_rules = { 
        '.video-list-item.video-no-tag': {
            'room_name': '.video-title::text',
            'anchor': '.video-nickname::text',
            'audience_count': '.video-number::text',
            'tag': '.video-cate::text',
            'url': 'a::attr(href)',
            'platform': ['zhanqitv'],
            'platform_prefix_url': ['http://www.zhanqi.tv/'],
        }   
    }

    ex_rule = ExRule('http://www.zhanqi.tv/all$', list_css_rules=list_css_rules)

    name='zhanqitv'
    allowed_domains=['zhanqi.tv']
    start_urls=['http://www.zhanqi.tv/lives']
    ex_rules = []
    follow = False

    @staticmethod
    def update_composed_pk(item):
        # audience_count = [Config.deal_human_readable_numbers(i) for i in item['audience_count']]
        item['platform_anchor'] = [item['platform'][0] + '+' + item['anchor'][0]]

    @staticmethod
    def preprocess_item(list_item):
        oi = OrderedDict(list_item)

        # process_items_from_list(oi, Config.update_audience_count)
        process_items_from_list(oi, Config.update_composed_pk)

        return oi
