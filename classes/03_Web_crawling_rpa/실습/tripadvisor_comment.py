from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver import Chrome
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time



url = 'https://www.tripadvisor.co.kr/Restaurant_Review-g294197-d3200324-Reviews-Jungsik-Seoul.html'
more_view_selector = 'span.taLnk.ulBlueLinks'
next_b_selector = '#taplc_location_reviews_list_resp_rr_resp_0 > div > div > div > div > a.nav.next.ui_button.primary'


service = Service(executable_path=ChromeDriverManager().install())
browser = Chrome(service=service)
browser.implicitly_wait(5)

browser.get(url)

time.sleep(5)
browser.close()

