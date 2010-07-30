Feature: List of posts 
  In order to see the most recent posts
  As a visitor
  I want the 5 most recent posts on the front page
  
  Scenario: 6 visible posts in blog
    Given I have posts with the following data:
      | title | summary | body | published_at | published |
      | Post title 1 | Interesting stuff 1... | Post content with a lot of really smart content 1. | 2010-07-04 00:00:00 | true |
      | Post title 2 | Interesting stuff 2... | Post content with a lot of really smart content 2. | 2010-07-05 00:00:00 | true |
      | Post title 3 | Interesting stuff 3... | Post content with a lot of really smart content 3. | 2010-07-06 00:00:00 | true |
      | Post title 4 | Interesting stuff 4... | Post content with a lot of really smart content 4. | 2010-07-07 00:00:00 | true |
      | Post title 5 | Interesting stuff 5... | Post content with a lot of really smart content 5. | 2010-07-08 00:00:00 | true |
      | Post title 6 | Interesting stuff 6... | Post content with a lot of really smart content 6. | 2010-07-09 00:00:00 | true |
    When I go to the homepage
    Then I should see the following on the page:
      | title | summary | body | published_at | published |
      | Post title 6 | Interesting stuff 6... | Post content with a lot of really smart content 6. | 2010-07-09 00:00:00 | true |
      | Post title 5 | Interesting stuff 5... | Post content with a lot of really smart content 5. | 2010-07-08 00:00:00 | true |
      | Post title 4 | Interesting stuff 4... | Post content with a lot of really smart content 4. | 2010-07-07 00:00:00 | true |
      | Post title 3 | Interesting stuff 3... | Post content with a lot of really smart content 3. | 2010-07-06 00:00:00 | true |
      | Post title 2 | Interesting stuff 2... | Post content with a lot of really smart content 2. | 2010-07-05 00:00:00 | true |
    But I should not see:
      | title | summary | body | published_at | published |
      | Post title 1 | Interesting stuff 1... | Post content with a lot of really smart content 1. | 2010-07-04 00:00:00 | true |
    And I should see pagination