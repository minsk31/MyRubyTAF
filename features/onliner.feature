@onliner
Feature: Check mobile phone availiability by price

  Scenario: test rrr
    Given I am on Onliner page
    When I search for "htc" mobile phone in catalogue
    Then "HTC ONE" presents on catalog  with price less then "4500000"