Feature: Status

	
	@MD-785
	Scenario Outline: User can filter goals by status
			Given I have clicked on the Filter section
			And the Filter Status section is displayed
			And the <status> filter button is displayed and enabled
			When click on the <status> filter option
			And the <status> filter tag is displayed
			Then a list of goals is displayed with that <status>
		Examples:
			|status|
			|NEW|
			|IN PROGRESS|
			|COMPLETED|
			|PENDING|