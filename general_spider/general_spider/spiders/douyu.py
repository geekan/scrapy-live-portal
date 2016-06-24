#coding: utf-8

from BasicSpiderConfig import ExRule
from collections import OrderedDict
from misc.common import *
from misc.log import *
import re

from spider_helper import *

class Config:

    list_css_rules = { 
        '#live-list-contentbox li': {
            'url': 'a::attr(href)',
            'room_name': 'a::attr(title)',
            'tag': 'span.tag.ellipsis::text',
            'audience_count': '.dy-num.fr::text',
            'anchor': '.dy-name::text',
            'video_img': '.imgbox img::attr(data-original)',
            'platform': ['douyu'],
            'platform_prefix_url': ['http://www.douyu.com/'],
        }
    }

    ex_rule = ExRule('http://www.douyu.com/all$', list_css_rules=list_css_rules)

    name='douyu.com'
    allowed_domains=['douyu.com']
    start_urls=['http://www.douyu.com/directory/all']
    ex_rules = []
    follow = False

    @staticmethod
    def preprocess_item(list_item):
        oi = OrderedDict(list_item)

        process_items_from_list(oi, update_audience_count)
        process_items_from_list(oi, update_composed_pk)

        return oi
