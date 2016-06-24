#coding: utf-8


from BasicSpiderConfig import ExRule
from collections import OrderedDict
from misc.common import *
from misc.log import *
import re

from spider_helper import *

class Config:

    list_css_rules = { 
        '#hotList li': {
            'room_name': '.name::text',
            'anchor': '.anchor-to-cut::text',
            'audience_count': '.views span::text',
            'tag': '.game-name::text',
            'url': 'a::attr(href)',
            'video_img': '.imgBox img::attr(src)',
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
    def preprocess_item(list_item):
        oi = OrderedDict(list_item)

        process_items_from_list(oi, update_audience_count)
        process_items_from_list(oi, update_composed_pk)

        return oi
