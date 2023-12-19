Feature: Post Request Swagger

  Background:
    Given url "https://petstore.swagger.io/v2/"
    And print "======= This is Post Request ======="
    * def body = {"id": 21,"username": "wiwideew","firstName": "dwi","lastName": "w","email": "-","password": "123","phone": "-","userStatus": 0}
    * def headers = {Accept: 'application/json'}

  Scenario: User get list users
    When path "/user"
    And request body
    And headers headers
    And method post
    Then status 200
    And print response

