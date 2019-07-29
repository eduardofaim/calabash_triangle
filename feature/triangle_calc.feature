Feature: Triangle Calculation
     Scenario: Calculating an equilateral triangle
       Given I'm on TrianguloApp screen
       When I calculate fields with the same value
       Then the message "O triângulo é Equilátero" will be displayed

     Scenario: Calculating an Isosceles Triangle
       Given I'm on TrianguloApp screen
       When I calculate fields with different values
       Then the message "O triângulo é Isósceles" will be displayed