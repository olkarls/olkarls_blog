Feature: Manage posts
  In order to publish and edit content
  As an author
  I need to be able to manage posts
  
  Scenario: Create post
   When I go to the new post page
   And I fill in "post[title]" with "A new post"
   And I fill in "post[summary]" with "New remarkable post."
   And I fill in "post[body]" with "Massive breathtaking content."
   And I select "2010" from "post[published_at(1i)]"
   And I select "October" from "post[published_at(2i)]"
   And I select "10" from "post[published_at(3i)]"
   And I select "10" from "post[published_at(4i)]"
   And I select "10" from "post[published_at(5i)]"
   And I press "Save"
   Then I should see "A new post"
   And I should see "New remarkable post."
   And I should see "Massive breathtaking content."
   And I should see "2010-10-10"
                     