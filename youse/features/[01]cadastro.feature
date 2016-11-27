Feature: New register on site www.youse.com.br 

Scenario: Adding a new user account   
 
  Given I am on the youse home page
  When I click on my account
  And I click on sign up
  And I fill in my name
  And I fill in my email
  And I fill in my password
  And I confirm my password 
  When I send my register
  Then I am a new user 
