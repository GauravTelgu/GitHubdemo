Feature: REQ_RES Login Feature

	@execute
 Scenario: Successful Login feature
     Given url baseURI
   	And path 'login'
   	* def Loginpostpayload = read('Loginpayload.json')
   	And request Loginpostpayload
    When method POST
    Then status 200
    

    @execute
 Scenario: Unsuccessful Login feature
     Given url baseURI
   	And path 'login'
   	* def UnSuccessfullLoginpostpayload = read('UnsuccessfulLoginPayload.json')
   	And request UnSuccessfullLoginpostpayload
    When method POST
    Then status 400