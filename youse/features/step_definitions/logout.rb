Given(/^I am logged$/) do
	puts  visit "http://www.youse.com.br"
	page.find(:xpath,".//*[@id='container']/div[1]/header/section/div/div/a[2]/span").click
	page.fill_in 'email', :with => 'ana.delprado@gmail.com'
	page.find(:xpath,".//*[@id='container']/div[2]/article/form/div/input").click
	page.fill_in 'user_password', :with => 'teste123'
	page.find(:xpath,".//*[@id='new_user']/div/input").click
end
 
When(/^I click on logout$/) do

	#find(:xpath,".//*[@id='container']/header/div[1]/nav/ul/li/ul", visible: false).set(true)	
	#find(:xpath,".//*[@id='container']/header/div[1]/nav/ul/li/ul/li[2]/a").click
	#page.driver.browser.action.move_to(page.find(:xpath, ".//*[@id='container']/header/div[1]/nav").native, 0, 0).perform
end
 
Then(/^I am logged out$/) do
        #expect(page).to have_content 'Sobre a Youse'
end
