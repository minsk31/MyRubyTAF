@onliner
Feature: Check mobile phone availiability by price

  Scenario: Check htc mobiles availiability less the 4500000
    Given I am on Onliner page
    When I search for "htc" mobile phone in catalogue
    Then "HTC ONE" presents on catalog  with price less then "4500000"