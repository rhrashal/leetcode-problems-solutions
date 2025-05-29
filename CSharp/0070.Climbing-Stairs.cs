using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

class Program
{       
    static void Main()
    {

        Console.WriteLine(ClimbStairs(5));
    
        Console.ReadKey();
    }

    public static int ClimbStairs(int n)
    {
        int[] tab = new int[n + 1];

        if (tab.Length > 0)
        {
            tab[0] = 1;
        }
        if (tab.Length > 1) 
        { 
            tab[1] = 1; 
        }

        for (int i = 2; i < tab.Length; i++)
        {
            tab[i] = tab[i - 1] + tab[i - 2];
        }


        return tab[n];
    }
}


