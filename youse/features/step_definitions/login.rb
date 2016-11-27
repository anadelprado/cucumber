Given(/^I am on the home$/) do
	puts  visit "http://www.youse.com.br"
end
 
When(/^I click on account$/) do
	page.find(:xpath,".//*[@id='container']/div[1]/header/section/div/div/a[2]/span").click
end


And(/^I fill in email$/) do
	page.fill_in 'email', :with => 'ana.delprado@gmail.com'
end

And(/^I go to the next step$/) do
	page.find(:xpath,".//*[@id='container']/div[2]/article/form/div/input").click
end

And(/^I fill in password$/) do
	page.fill_in 'user_password', :with => 'teste123'
end

And(/^I confirm$/) do
	page.find(:xpath,".//*[@id='new_user']/div/input").click
end
 
Then(/^I am logged in my account$/) do
	page.find(:xpath,".//*[@id='container']/div[1]/div/div[2]")
        expect(page).to have_content 'Login efetuado com sucesso.'
end
