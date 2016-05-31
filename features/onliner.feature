
@onliner
Feature: Onliner

  Background:
    Given I am on Onliner page

 #Scenario: Check htc mobiles availiability less the 4500000
 #  When I search for "lg" mobile phone in catalogue
 # Then "lg" presents on catalog  with price less then "450000"


 Scenario: Open item details using quick search
   When I search for "HTC Desire 626G White" item use quick search
   When Take a look for "HTC Desire 626G White" details
   Then "Смартфон!!!! HTC Desire 626G White" details are opened
