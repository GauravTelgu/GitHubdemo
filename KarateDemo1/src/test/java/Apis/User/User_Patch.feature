Feature: Req-Res Patch Feature

@execute
 Scenario: Update detail of a user.
    Given url baseURI
   	And path 'users/2'
   	And request
   	"""
   	{
    "name": "morpheus",
    "job": "zion resident"
		}
   	"""
   	When method PATCH
    Then status 200
    
    