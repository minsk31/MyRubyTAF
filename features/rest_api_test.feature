@api
Feature: ApiValidation
#  Scenario: CheckVirginApi
#    When I send call to VholsApi
#    Then Response should be valid


  Scenario: CheckApiUsingJsonPath
    When I send call to VholsApi
    Then carLocationId,cityName should be valid