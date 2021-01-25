require 'watir'

browser = Watir::Browser.new(:firefox)
browser.goto 'duckduckgo.com'
search_bar = browser.text_field(id: 'search_form_input_homepage')
search_bar.set(ARGV.join(""))
if ARGV.empty?
  puts"Apprends a te servir de ARGV avant de jouer au cons"
  exit
end

submit_button = browser.button(id: 'search_button_homepage')
submit_button.click
mail = browser.link(:text =>"Gmail").click
form = browser.text_field(class: 'whsOnd')
form.set("basilalbapro@gmail.com")
connexion_button= browser.button(class: 'VfPpkd-RLmnJb')
connexion_button.click
browser.driver.manage.timeouts.implicit_wait = 12
search_result_divs = browser.divs(class:"rc")
search_result_divs.each { |div| p div.h3.text }
browser.close
