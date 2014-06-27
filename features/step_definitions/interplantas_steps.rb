require "rubygems"
require "selenium-webdriver"

Given(/^Que el viverista desea mirar las plantas a comprar$/) do
  @driver = Selenium::WebDriver.for :firefox
  @driver.get "http://localhost:3000"  
end

When(/^Da click en el link Plantas de la barra de navegación$/) do
  @driver.findElement(By.id("lk_plantas")).click();
	wait = Selenium::WebDriver::Wait.new(:timeout => 10)
end

Then(/^Abrira la pagina mostrar plantas con el titulo "(.*?)"$/) do |titulo|  
  expect(@driver.title).to eq(titulo)
  @driver.quit
end