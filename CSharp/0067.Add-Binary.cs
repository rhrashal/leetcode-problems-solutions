using System;

class Program
{
    static string AddBinary(string a, string b)
    {
        int maxLen = Math.Max(a.Length, b.Length);
        a = a.PadLeft(maxLen, '0');
        b = b.PadLeft(maxLen, '0');

        int carry = 0;
        char[] result = new char[maxLen + 1]; 


        for (int i = maxLen - 1; i >= 0; i--)
        {
            int digitA = a[i] - '0'; 
            int digitB = b[i] - '0'; 
            int total = digitA + digitB + carry;

            result[i + 1] = (char)((total % 2) + '0'); 
            carry = total / 2; 
        }


        if (carry != 0)
        {
            result[0] = (char)(carry + '0');
            return new string(result);
        }
        else
        {
            return new string(result, 1, maxLen); 
        }
    }

    static void Main()
    {
        string a = "1010";
        string b = "1011";
        Console.WriteLine(AddBinary(a, b)); // Output: "10101"

        a = "11";
        b = "1";
        Console.WriteLine(AddBinary(a, b)); // Output: "100"

        a = "0";
        b = "0";
        Console.WriteLine(AddBinary(a, b)); // Output: "0"
    }
}
