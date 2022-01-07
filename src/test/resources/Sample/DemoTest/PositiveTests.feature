Feature: Sample Test Feature file

  Background:
    * url 'https://reqres.in/'

  @first
  Scenario: Demo Test Scenario
    * path 'api/users'
    * param page = 2
    * method GET
    * status 200
    * print response
    * match $.page == '#notnull'

  @ignore @second
  Scenario: Demo Test Scenario 2
    * path 'api/unkown'
    * method GET
    * status 200
# expected to fail