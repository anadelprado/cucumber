Given(/^I am on the youse home page$/) do
	puts  visit "http://www.youse.com.br"
end
 
When(/^I click on my account$/) do
	page.find(:xpath,".//*[@id='container']/div[1]/header/section/div/div/a[2]/span").click
end

And(/^I click on sign up$/) do
	page.find(:xpath,".//*[@id='container']/div[2]/a[1]").click
end

And(/^I fill in my name$/) do
	page.fill_in 'user_name', :with => 'Ana Del Prado'
end

And(/^I fill in my email$/) do
	page.fill_in 'user_email', :with => 'ana.delprado@gmail.com'
end

And(/^I fill in my password$/) do
	page.fill_in 'user_password', :with => 'teste123'
end

And(/^I confirm my password$/) do
	page.fill_in 'user_password_confirmation', :with => 'teste123'
end

When(/^I send my register$/) do
	#page.find(:xpath,".//*[@id='new_user']/div/input").click
end
 
Then(/^I am a new user$/) do
	#page.find(:xpath,".//*[@id='container']/div[1]/div/div[2]")
        #expect(page).to have_content 'Bem vindo! Você realizou seu registro com sucesso.'
end
