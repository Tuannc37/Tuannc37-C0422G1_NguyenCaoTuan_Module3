package model;

public class Calculator {
    private float number1;
    private float number2;
    private char operator;

    public Calculator() {
    }

    public Calculator(float number1, float number2, char operator) {
        this.number1 = number1;
        this.number2 = number2;
        this.operator = operator;
    }

    public float getNumber1() {
        return number1;
    }

    public void setNumber1(float number1) {
        this.number1 = number1;
    }

    public float getNumber2() {
        return number2;
    }

    public void setNumber2(float number2) {
        this.number2 = number2;
    }

    public char getOperator() {
        return operator;
    }

    public void setOperator(char operator) {
        this.operator = operator;
    }

    public static float calculate(float number1, float number2, char operator ){
        switch (operator){
            case '+':
                return number1 + number2;
            case '-':
                return number1 - number2;
            case '*':
                return number1 * number2;
            case '/':
                if(number2 != 0)
                    return number1 / number2;
                else
                    throw new RuntimeException("Can't divide by zero");
            default:
                throw new RuntimeException("Invalid operation");
        }
    }
}


