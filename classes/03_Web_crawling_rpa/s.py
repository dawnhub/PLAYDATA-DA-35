
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys


service = Service(executable_path=ChromeDriverManager().install())


ts = '#rso > div > div > div > div > div > div > span > a > h3'

browser = webdriver.Chrome(service=service)
browser.get("https://google.com")
browser.find_element(By.NAME, 'q').send_keys("파이썬"+Keys.ENTER)
titles = browser.find_element(By.CSS_SELECTOR, ts)
print(titles)

