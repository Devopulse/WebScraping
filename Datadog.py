import bs4, requests, time, subprocess
from datadog import statsd, initialize, api

while(True):
    res=requests.get('https://www.utctime.net/')
    res.raise_for_status()
    noStarchSoup=bs4.BeautifulSoup(res.text,"html.parser")
    type(noStarchSoup)
    html_elements = noStarchSoup.select('span')[2]
    str(html_elements)
    curr_time = html_elements.getText()
    statsd.gauge('seconds.change',curr_time[6:])
    print(curr_time[6:])
    time.sleep(11)
