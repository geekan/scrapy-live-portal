
from BasicSpiderConfig import ExRule
from collections import OrderedDict
from misc.common import *
from misc.log import *

class Config:

    list_css_rules = { 
        '.docvideo li': {
            'room_name': 'h3.ng-binding::text',
            'anchor': '.zb::text',
            'audience_count': '.numbers::text',
            'tag': '.cl::text',
            'url': 'a::attr(href)',
            'platform': ['quanmintv'],
            'platform_prefix_url': ['http://www.quanmin.tv/'],
        }   
    }

    ex_rule = ExRule('http://www.quanmin.tv/game/all$', list_css_rules=list_css_rules)

    name='quanmintv'
    allowed_domains=['quanmin.tv']
    start_urls=['http://www.quanmin.tv/all']
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
