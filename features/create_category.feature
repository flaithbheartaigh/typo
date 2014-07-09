Feature: Create Categories
  As a blog administrator
  In order to #sort posts on the blog#
  I want to be able to #create categories#

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new category page

    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "AKeyword,AnotherKeyword"
    And I fill in "category_description" with "A test category"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Foobar" 
    And I should see "A test category" 
    And I should see "AKeyword" 
    And I should see "AnotherKeyword" 
# category_container is the container table for the list, could check inside this??

