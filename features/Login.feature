Feature: Login

Scenario:To verify the fields of the login page
Given I am in Login page
Then I should see "Email"
Then I should see "Password"
Then I should see "Login"

Scenario:To verify the fields filled with empty
Given I am in Login page
Then I fill in "Email" with ""
Then I fill in "Password" with ""
When I press "Login"
Then I should be on the session page
And I should see "Invalid Login/Password Combination"


Scenario:To verify the fields filled with correct values
Given I am in Login page
Then I fill in "Email" with "vgsaveethait@gmail.com"
Then I fill in "Password" with "123456"
When I press "Login"
Then I should see "Blog"