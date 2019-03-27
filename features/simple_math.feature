Feature: 算数のテスト
  算術関数のテスト
  As a developer
  I want to increment variables

  Scenario: 加算
    Given 変数に 1 がセットされる
    When 変数を 1 増加させる
    Then 変数の値が 2 に等しい

  Scenario: 減算
    Given 変数に 1 がセットされる
    When 変数を 1 減少させる
    Then 変数の値が 0 に等しい

  Scenario Outline: 複雑な加算
    Given 変数に <var> がセットされる
    When 変数を <increment> 増加させる
    Then 変数の値が <result> に等しい

    Examples:
      |   var | increment |  result |
      |   100 |         5 |     105 |
      |    99 |      1234 |    1333 |
      |    12 |         5 |      17 |
      | "aaa" |         2 |  "aaa2" |

  Scenario Outline: 複雑な減算
    Given 変数に <var> がセットされる
    When 変数を <decrement> 減少させる
    Then 変数の値が <result> に等しい

    Examples:
      | var | decrement | result |
      | 100 |         5 |     95 |
      |  99 |      1234 |  -1135 |
      |  12 |         5 |      7 |
