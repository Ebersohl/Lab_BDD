# ----------------------------------------------------------------------------
# Author: Amber Ebersohl
#  Date: 03DEC2019
#
# Write Gherkin behavior-driven tests for DuckDuckGo API Presidents Search
#  ---------------------------------------------------------------------------


Feature: DuckDuckGo Search API
  As a person with a desire to search the web for presidents, I want to utilize the DuckDuckGo search feature and  
  API to find a list of presidential last names.
  
  Scenario Outline: Presidents in Related Topics
    Given the DuckDuckGo API is queried with "presidents of the united states"
    Then the RelatedTopics contain "<name>"
    
    Examples: Presidents
      | name       |
      | Washington |
      | Adams      |
      | Jefferson  |
	  | Madison    |
      | Monroe     |
      | Jackson    |
	  | Van Buren  |
      | Harrison   |
      | Tyler      |
	  | Polk       |
      | Taylor     |
      | Fillmore   |
	  | Pierce     |
      | Buchanan   |
      | Lincoln    |
	  | Johnson    |
      | Grant      |
      | Hayes      |
	  | Garfield   |
      | Arthur     |
      | Cleveland  |
	  | McKinley   |
      | Roosevelt  |
      | Taft       |
	  | Wilson     |
      | Harding    |
      | Coolidge   |
	  | Hoover     |
      | Truman     |
      | Eisenhower |
	  | Kennedy    |
      | Nixon      |
      | Ford       |
	  | Carter     |
      | Reagan     |
      | Bush       |
	  | Clinton    |
      | Obama      |
      | Trump      |
