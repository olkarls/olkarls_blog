Feature: Manage posts
  In order to publish and edit content
  As an author
  I need to be able to manage posts
  
  Scenario: Create post
   When I go to the new post page
   And I fill in "post[title]" with "A new post"
   And I fill in "post[preamble]" with "New remarkable post."
   And I fill in "post[title]" with "Massive breathtaking content."
   And I fill in "post[published_at]" with "2010-10-10"
   And I press "Save"
   Then I should see "A new post"
   And I should see "New remarkable post."
   And I should see "Massive breathtaking content."
   And I should see "2010-10-10"
                     