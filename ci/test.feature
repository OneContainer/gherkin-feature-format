
# This source code is licensed under Apache 2.0 License.
Feature: Go Sentence

  Background:
    Given a graph with space named "nba"

  Scenario: one step
    When executing query:
      """
      GO FROM "Tim Duncan" OVER serve YIELD serve._dst
      """
    Then the result should be, in any order, with relax comparison:
      | serve._dst |
      | "Spurs"    |
