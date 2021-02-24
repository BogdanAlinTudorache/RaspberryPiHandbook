import requests
from bs4 import BeautifulSoup as soup


headers = {'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36' }

berrynews = "http://berrynews.org/netherlands-en.html?"
page = requests.get(berrynews,headers = headers)
htmlpage = soup(page.content,'html.parser')


print("Print page header1:", htmlpage.h1)
print("Print text from page header1:", htmlpage.h1.text)
