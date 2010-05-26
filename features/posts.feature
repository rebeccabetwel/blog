Feature: Manage posts
      In order to make a blog
      As an author
      I want to create and manage posts

	Scenario: list posts
		Given I am logged in as an user
		And I have posts titled 'My First Post', 'My Second Post' with 'Any Content'
		When I am on the list of posts
		Then I should see "My First Post"
		And I should see "My Second Post"
		And I should have 2 posts

	Scenario: create a valid post
		Given I am logged in as an user
		And I am on the new post page
		And I fill in "title" with "New Post"
		And I fill in "content" with "new content"
		And I press "Save changes"
		Then I should see "Successfully created post."
		And I should see "New Post"
		And I should see "new content"
		And I should have 1 posts

	Scenario: create a invalid post
		Given I am logged in as an user
		And I am on the new post page
		And I fill in "title" with "New Post"
		And I press "Save changes"
		Then I should see "error"
		And I should have 0 posts

	Scenario: editting a post
		Given I am logged in as an user
		And I have posts titled 'My Frist Post' with 'Any Content'
		And I am on the edit page of my post number 1
		And I fill in "title" with "My First Post"
		And I press "Save changes"
		Then I should see "Successfully updated post."
		And I should have 1 posts
		And I should see "My First Post"

	Scenario: destroy a posts
		Given I am logged in as an user
		And I have posts titled 'My First Post', 'My Second Post' with 'Any Content'
		And I am on the list of posts
		Then I follow "Destroy"
		And I should see "Successfully destroyed post."
		And I should have 1 posts

