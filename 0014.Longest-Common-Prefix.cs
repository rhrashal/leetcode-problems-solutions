using System;

namespace ConsoleApp1
{
    internal class Program
    {

        static void Main(string[] args)
        {

            Program prg = new Program();


            var res = prg.LongestCommonPrefix(new[] { "flower", "flow", "flight" });

            Console.WriteLine(res);



            Console.ReadKey();
        }



        public string LongestCommonPrefix(string[] strs)
        {
            if (strs == null || strs.Length == 0)
                return "";

            // Sort the array of strings
            Array.Sort(strs);

            // Get the first and last strings after sorting
            string first = strs[0];
            string last = strs[strs.Length - 1];
            int minLength = Math.Min(first.Length, last.Length);

            // Compare characters one by one to find the common prefix
            int i = 0;
            while (i < minLength && first[i] == last[i])
            {
                i++;
            }

            // Return the common prefix
            return first.Substring(0, i);
        }

    }
}
