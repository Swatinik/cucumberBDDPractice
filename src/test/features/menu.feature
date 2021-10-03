Feature: Menu Test

  As a user
  I should get redirected appropriately

  @menu
  Scenario Outline: Menu redirection appropriately
    Given I am on homepage "http://next.co.uk"
    When I click on menu option "<MenuOptions>"
    When I click on sub menu option "<SubMenuOptions>"
    Examples:
      | MenuOptions | SubMenuOpt
