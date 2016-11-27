Given(/^I am on the youse home$/) do
	puts  visit "http://www.youse.com.br"
end
 
When(/^I click on insurance auto$/) do
	page.find(:xpath,".//*[@id='container']/div[1]/div[2]/section[2]/div/ul/li[2]/div/a[2]").click
end

And(/^I fill in my full name$/) do
	page.fill_in 'auto_order_flow_lead_person_data_lead_person_attributes_name', :with => 'Ana Christina Del Prado'
end

And(/^I select insurance type$/) do
	#page.find(:xpath,".//*[@id='new_user']/div/input").click
end

And(/^I fill in my number$/) do
	page.fill_in 'auto_order_flow_lead_person_data_lead_person_attributes_phone', :with => '11999999999'
end

And(/^I type my email$/) do
	page.fill_in 'auto_order_flow_lead_person_data_lead_person_attributes_email', :with => 'ana.delprado@gmail.com'
end

And(/^I go to the second step$/) do
 	expect(page).to have_css ".button.button--primary"
	page.find(:css,".button.button--primary").click
end

And(/^I select car brand$/) do
	#select "HONDA", from: "auto_order_flow_pricing_requirements_vehicle_attributes_make", :match => :first
	find(:select, "auto_order_flow_pricing_requirements_vehicle_attributes_make").first(:option, 'HONDA').select_option
end

And(/^I select car model$/) do
	#select "FIT", from: "auto_order_flow_pricing_requirements_vehicle_attributes_model"
	find(:select, "auto_order_flow_pricing_requirements_vehicle_attributes_model").first(:option, 'FIT').select_option
end

And(/^I select car year$/) do
	select "2010", from: "auto_order_flow_pricing_requirements_vehicle_attributes_year"
end

And(/^I select car version$/) do
	select "FIT EXL 1.5 FLEX 16V 5P MEC (Gasolina / Flex)", from: "auto_order_flow_pricing_requirements_vehicle_attributes_version"
end

And(/^I fill in car info$/) do
	#page.find(:xpath,".//*[@id='new_user']/div/input").click
end

And(/^I select zip code$/) do
	page.fill_in 'auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode', :with => '01527030'
end

And(/^I fill in my info$/) do
	#page.find(:xpath,".//*[@id='new_user']/div/input").click
end
 
And(/^I select accident$/) do
	#page.find(:xpath,".//*[@id='new_user']/div/input").click
end
 
Then(/^I confirm my insurance$/) do
	#page.find(:xpath,".//*[@id='container']/div[1]/div/div[2]")
        #expect(page).to have_content 'Bem vindo! Você realizou seu registro com sucesso.'
end
