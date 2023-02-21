import java.util.Scanner;

public class FindMaxNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the first number: ");
        int num1 = sc.nextInt();
        System.out.print("Enter the second number: ");
        int num2 = sc.nextInt();
        int maxNumber = findMax(num1, num2);
        System.out.println("The maximum number between " + num1 + " and " + num2 + " is: " + maxNumber);
    }

    public static int findMax(int num1, int num2) {
        if (num1 > num2) {
            return num1;
        } else {
            return num2;
        }
    }
}