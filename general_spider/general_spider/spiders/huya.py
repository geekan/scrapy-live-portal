#coding: utf-8

from BasicSpiderConfig import ExRule
from collections import OrderedDict
from misc.common import *
from misc.log import *
import re

from spider_helper import *

class Config:

    list_css_rules = { 
        '.video-list .video-list-item': {
            'room_name': '#js-video-all .clickstat::text',
            'anchor': '.nick::text',
            'audience_count': '.js-num::text',
            'tag': '.fr a::text',
            'url': 'a.video-info::attr(href)',
            'video_img': 'img.pic::attr(src)',
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
    def preprocess_item(list_item):
        oi = OrderedDict(list_item)

        process_items_from_list(oi, update_audience_count)
        process_items_from_list(oi, update_composed_pk)
        process_items_from_list(oi, use_relative_url)

        return oi
