conf=${1:-quanmintv_json}
scrapy crawl -L INFO general_json_spider -a conf_module=$conf
