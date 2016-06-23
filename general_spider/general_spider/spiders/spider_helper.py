#coding: utf-8

import urllib
import re


def update_composed_pk(item):
    # audience_count = [Config.deal_human_readable_numbers(i) for i in item['audience_count']]
    item['platform_anchor'] = [item['platform'][0] + '+' + item['anchor'][0]]


def download_image(item, dir='./images/'):
    urllib.urlretrieve(item['video_img'][0],
                       dir + item['platform'][0] + '+' + item['anchor'][0] + '.' + item['video_img'][0].split('.')[-1])


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

# Note that if not force 1 item, item['audience_count'] would contain a list.
def update_audience_count(item):
    if type(item['audience_count']) != list:
        return

    audience_count = [deal_human_readable_numbers(i) for i in item['audience_count']]
    item['audience_count'] = audience_count

def use_relative_url(item):
    # audience_count = [Config.deal_human_readable_numbers(i) for i in item['audience_count']]
    item['url'] = ['/' + item['url'][0].split('/')[-1]]