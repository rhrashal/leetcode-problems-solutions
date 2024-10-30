using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
        public static void PrintList(ListNode node)
        {
            while (node != null)
            {
                Console.Write(node.val + " ");
                node = node.next;
            }
            Console.WriteLine();
        }
        static void Main(string[] args)
        {

            Program p = new Program();    

            // Create first linked list: 1 -> 3 -> 5
            ListNode l1 = new ListNode(1, new ListNode(2));

            // Create second linked list: 2 -> 4 -> 6
            ListNode l2 = new  ListNode(2, new ListNode(3));

            // Call the MergeTwoList function
            ListNode mergedList = p.MergeTwoLists(l1, l2);

            // Print the merged linked list
            Console.WriteLine("Merged Linked List:");
            PrintList(mergedList);


            Console.ReadKey();
        }

        

        public ListNode MergeTwoLists(ListNode list1, ListNode list2)
        {
            if (list1 == null) return list2;
            if (list2 == null) return list1;

            ListNode dummy = new ListNode();
            ListNode current = dummy;

            while (list1 != null && list2 != null)
            {
                int value = 0;
                if (list1.val <= list2.val)
                {
                    value = list1.val;
                    list1 = list1.next;
                }
                else
                {
                    value = list2.val;
                    list2 = list2.next;
                }
                ListNode tmp = new ListNode(value);
                current.next = tmp;
                current = current.next;
            }

            if (list1 == null)
            {
                current.next = list2;
            }
            else if (list2 == null)
            {
                current.next = list1; 
            }

            return dummy.next;
        }

        public ListNode MergeTwoLists_2(ListNode l1, ListNode l2)
        {
            if (l1 == null) return l2;
            if (l2 == null) return l1;
            if (l1.val <= l2.val)
            {
                l1.next = MergeTwoLists_2(l1.next, l2);
                return l1;
            }
            else
            {
                l2.next = MergeTwoLists_2(l1, l2.next);
                return l2;
            }
        }

        public ListNode MergeTwoLists_3(ListNode l1, ListNode l2)
        {
            // Create a dummy node to act as the starting point of the merged list.
            ListNode dummy = new ListNode();
            ListNode current = dummy;

            // Traverse both lists using a for loop structure
            for (; l1 != null || l2 != null;)
            {
                // Check if both lists are non-empty
                if (l1 != null && (l2 == null || l1.val <= l2.val))
                {
                    current.next = l1;
                    l1 = l1.next;
                }
                else if (l2 != null)
                {
                    current.next = l2;
                    l2 = l2.next;
                }
                current = current.next;
            }

            // The merged list starts at dummy.Next
            return dummy.next;
        }

        

    }



}
