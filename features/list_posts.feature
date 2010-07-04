Feature: List of posts 
  In order to see the most recent posts
  As a visitor
  I want the 5 most recent posts on the front page
  
  Scenario: 1 post in blog
    Given I have a post
    And my post has title "Post title"
    And my post has preamble "Interesting stuff..."
    And my post has body "Post content with a lot of really smart content."
    And my post was published at "2010-07-04 00:00:00"
    When I go to the homepage
    Then I should see "Post title"
    And I should see "2010-07-04"
    And I should see "Interesting stuff..."
    And I should see "Post content with a lot of really smart content."