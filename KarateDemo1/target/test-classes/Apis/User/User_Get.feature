Feature: Req-Res Get Feature

 @execute
  Scenario: Get all User details
    #Given url baseURI: 'https://reqres.in/api',
    Given url baseURI
    And path 'users?page=2'
    When method GET
    Then status 200
    
    
    @execute
  Scenario: Get Single user details
    
    Given url baseURI
    And path 'users/2'
    When method GET
    Then status 200
    
    @execute
  Scenario: Single user not found
    
    Given url baseURI
    And path 'users/23'
    When method GET
    Then status 404    
 
 
  @execute
  Scenario: List Resource
    
    Given url baseURI
    And path 'unknown'
    When method GET
    Then status 200
    
    
    @execute
  Scenario: Single Resource
    
    Given url baseURI
    And path 'unknown/2'
    When method GET
    Then status 200
    
    @execute
  Scenario: Single Resource not found
    
    Given url baseURI
    And path 'unknown/23'
    When method GET
    Then status 404
    
    @execute
  Scenario: Delayed Response
    
    Given url baseURI
    And path 'users?delay=3'
    When method GET
    Then status 200
    
    
    
    
    
    
        