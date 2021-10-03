Feature: Header Links

  As a user
  I should get directed appropriately from header

  @headerLink
  Scenario: verify My account link re-direction

    Given I'm on the homepage "http://www.next.co.uk"#
    When I click on My account Link
    Then I should get redirected appropriately with title "Sign In"

  @headerLink
  Scenario: verify Help link re-direction

    Given I'm on the homepage "http://www.next.co.uk"#
    When I click on Help Link
    Then I should get redirected appropriately with title "Help"

  @headerLink
  Scenario: verify Store Locator link re-direction

    Given I'm on the homepage "http://www.next.co.uk"
    When I click on Store locator Link
    Then I should get redirected appropriately with title "Store Locator"

    @searchLink
  Scenario: verify Search link
    Given I'm on homepage "http://www.next.co.uk"
    When I enter product name "T-shirt" on search bar
    And click on search button
    Then I should redirected to the appropriate result page