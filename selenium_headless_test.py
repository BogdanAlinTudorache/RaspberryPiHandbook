from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options
chromeOptions = Options()
chromeOptions.headless = True
browser = webdriver.Chrome(executable_path="/usr/bin/chromedriver", options=chromeOptions)
browser.get('https://github.com/BogdanAlinTudorache/RaspberryPiHandbook/wiki')
print('Title: %s' % browser.title)
