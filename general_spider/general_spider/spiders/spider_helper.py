
import urllib


def update_composed_pk(item):
    # audience_count = [Config.deal_human_readable_numbers(i) for i in item['audience_count']]
    item['platform_anchor'] = [item['platform'][0] + '+' + item['anchor'][0]]


def download_image(item):
    urllib.urlretrieve(item['video_img'][0],
                       './images/' + item['platform'][0] + '+' + item['anchor'][0] + '.' + item['video_img'][0].split('.')[-1])
