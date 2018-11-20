Feature: Sample Feature

  @test
  Scenario: To Add An IphoneX on to cart
    Given I launch https://Google.com
    And I enter Amazon in
    And I click Google Search button
    And I see Home page
    And I click Amazon Web Link
    And I search IphoneX on Amazon
    And I click Search
    When I open first result
    Then I Add to cart

