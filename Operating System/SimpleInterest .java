import java.util.Scanner;

public class SimpleInterest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the principal amount: ");
        double principal = sc.nextDouble();
        System.out.print("Enter the rate of interest: ");
        double rate = sc.nextDouble();
        System.out.print("Enter the time period (in years): ");
        double time = sc.nextDouble();
        double simpleInterest = calculateSimpleInterest(principal, rate, time);
        System.out.println("Simple interest for the given principal, rate, and time period is: " + simpleInterest);
    }

    public static double calculateSimpleInterest(double principal, double rate, double time) {
        double simpleInterest = (principal * rate * time) / 100;
        return simpleInterest;
    }
}