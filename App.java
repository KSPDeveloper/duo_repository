package com.qa;
import java.util.Scanner;
/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        Scanner scan = new Scanner(System.in);
        System.out.println("Please input your salary below: ");
        Taxes(scan.nextDouble());


    }

    public static double Taxes(double income)
    {

        double taxCalc = 1.0;

        if(income < 15000)
        {
            return income;
        }

        return taxCalc;
    }
}
