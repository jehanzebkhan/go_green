Feature: Manage Movies
  @firefox
  Scenario: Show all movies
    Given the following movie records exist
      | title         | score |
      | Grey          | 6.8   |
      | Godfather     | 9.2   |
      | Prestige      | 8.5   |
      | Memento       | 8.5   |
      | Interstellar  | 9.6   |
      | Inception     | 9.7   |
    When I visit movies home page
    Then I should see any change in the interface