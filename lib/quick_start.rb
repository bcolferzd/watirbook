require "selenium-webdriver"
browser = Selenium::WebDriver.for :firefox
browser.get "https://www.google.com/"
puts browser.current_url
#browser.find_element(link_text: "Google.com").click # travis does have this link
browser.find_element(link_text: "Images").click
puts browser.title
browser.find_element(name: "q").send_keys "book"
browser.find_element(name: "btnG").click
puts browser.find_elements(tag_name: "img").size
browser.close