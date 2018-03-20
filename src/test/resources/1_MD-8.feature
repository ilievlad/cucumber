@MD-8
Feature: As an employee, I want to be able to create/edit a goal so that I can keep track of what needs to be done
	#h4. Acceptance Criteria:
	#
	#
	#
	#||Field Name||Field Type||||Characters||Data Type||
	#|Title|Text|70|VARCHAR|
	#
	#{color:#d04437}Scenario 1:{color} *User can access "Development Goal" card*
	#
	#*Given* I am on the My Development Tracker page
	#*When* I click on the “+” symbol of the first goal card labelled "Development Goal, Click to add a new goal"
	#*Then* a "Development Goal" card is displayed and enabled for editing
	#
	#{color:#d04437}Scenario 2:{color} *User can view “Development Goal” card*
	#
	#*Given* I am on the “Development Goal” card 
	#*And* the _Title_ field is displayed and mandatory
	#*And* the _Save Button_ is displayed and disabled
	#*And* the _Discard Button_ is displayed and enabled
	#*When* I click on “Discard” without having entered any data
	#*Then* I am on the My Development Tracker page
	#
	#{color:#d04437}Scenario 3{color}: *User can add new goal*
	#
	#*Given* I am on the “Development Goal” card
	#*And* I have filled in the _Title_ 
	#*When* I click on “Save”
	#*Then* I am on the My Development Tracker main page
	#*And* the “New Goal Successfully Created” message is displayed
	#*And* the new goal is published under the "My Development Tracker" section
	#*And* the goals are sorted by creation date
	#*And* the _Goal Status_ is "In Progress 0%"
	#*And* the _Goal Progress Bar_ is displayed
	#*And* the _Private_ icon is displayed and enabled
	#*And* the _Share with OPC_ icon is displayed and enabled
	#*And* the _Delete_ icon is enabled and hidden (visible on hover over)
	#*And* the _Edit_ icon is enabled and hidden (visible on hover over)
	#*And* the _Activity Side Drawer_ is displayed
	#*And* the first activity card labelled "Add Activities" with a “+” symbol is displayed and enabled
	#
	#{color:#d04437}Scenario 4{color}: *User can edit a goal*
	#
	#*Given* I am on the My Development Tracker page
	#*When* I click on the “Edit” icon of a development goal
	#*Then* the _Title_ field is enabled and can be edited
	#
	#
	#{color:#d04437}Scenario 5{color}: *User can edit a goal*
	#
	#*Given* I am on a "Development Goal"
	#*And* I have clicked on the "Edit" icon
	#*And* the _Save Button_ is displayed and disabled
	#*And* the _Discard Button_ is displayed and enabled
	#*When* I edit the _Title_
	#*And* click on “Save”
	#*Then* I am on the My Development main page
	#*And* the “Development Goal Updated Successfully” message is displayed

	
	@MD-784 @java_done
	Scenario: As an employee, I edit a goal
		    Given I am on the My Development Tracker page
		    When I want to edit a goal
		    And I have edit the title of a goal
		    When I save the goal
		    Then I am on the My Development Tracker page
		    And the update goal notification is displayed