require "rubygems"
require 'capybara/rails'

Given(/^Que el viverista desea mirar las plantas a comprar$/) do
  visit '/' 
end

When(/^Da click en el link Plantas de la barra de navegación$/) do  
	click_link 'Plantas'  
end

Then(/^Abrira la pagina mostrar plantas con el titulo "(.*?)"$/) do |titulo| 
  expect(page.title).to eq(titulo)
end