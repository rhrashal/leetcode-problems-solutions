using System;
using System.Xml.Linq;

namespace ConsoleApp1
{
    public class ListNode
    {
        public int val;
        public ListNode next;
        public ListNode(int val = 0, ListNode next = null)
        {
            this.val = val;
            this.next = next;
        }
    }

    internal class Program
    {

        static void Main(string[] args)
        {

            // Creating the first list: 2 -> 4 -> 3 (represents the number 342)
            ListNode l1 = new ListNode(2);
            l1.next = new ListNode(4);
            l1.next.next = new ListNode(3);

            // Creating the second list: 5 -> 6 -> 4 (represents the number 465)
            ListNode l2 = new ListNode(5);
            l2.next = new ListNode(6);
            l2.next.next = new ListNode(4);

            // Creating an instance of the class that contains the AddTwoNumbers method
            Program solution = new Program();

            // Calling the AddTwoNumbers method
            ListNode result = solution.AddTwoNumbers(l1, l2);




            while (result != null)
            {
                Console.Write(result.val);
                if (result.next != null)
                    Console.Write(" -> ");
                result = result.next;
            }

            Console.WriteLine();




            Console.ReadKey();
        }



        public ListNode AddTwoNumbers(ListNode l1, ListNode l2)
        {
            ListNode head = null;
            // Reference of head which is null at this point
            ListNode temp = null;
            // Carry
            int carry = 0;
            // Loop for the two lists
            while (l1 != null || l2 != null)
            {
                // At the start of each iteration, we should add carry from the last iteration
                int sum = carry;
                // Since the lengths of the lists may be unequal, we are checking if the
                // current node is null for one of the lists
                if (l1 != null)
                {
                    sum += l1.val;
                    l1 = l1.next;
                }
                if (l2 != null)
                {
                    sum += l2.val;
                    l2 = l2.next;
                }
                // At this point, we will add the total sum % 10 to the new node
                // in the resultant list
                ListNode node = new ListNode(sum % 10);
                // Carry to be added in the next iteration
                carry = sum / 10;
                // If this is the first node or head
                if (temp == null)
                {
                    temp = head = node;
                }
                // For any other node
                else
                {
                    temp.next = node;
                    temp = temp.next;
                }
            }

            if (carry > 0)
            {
                temp.next = new ListNode(carry);
            }
            return head;
        }

    }
}
