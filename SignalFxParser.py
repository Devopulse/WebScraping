import bs4, requests, time, subprocess

while(True):
    res=requests.get('https://www.utctime.net/')
    res.raise_for_status()
    noStarchSoup=bs4.BeautifulSoup(res.text,"html.parser")
    #print(res.text)
    type(noStarchSoup)
    print(noStarchSoup.select('span'))
    print(noStarchSoup.select('span')[2])
    html_elements = noStarchSoup.select('span')[2]
    str(html_elements)
    curr_time = html_elements.getText()
    print(html_elements.getText())
    #output=subprocess.check_output(['./signalfx_trial.sh',curr_time[6:]])
    print(curr_time[6:])
    time.sleep(3)
