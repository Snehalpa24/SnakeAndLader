using System.IO;
using System;
using System.Collections.Generic;

class Program
{
    static void DisplayChoices()
    {

        Console.WriteLine("Enter your choice");
        Console.WriteLine("1. Roll Dice.");
        Console.WriteLine("2. Quit.");
    }
    static void Main(string[] args)
    {
        Random random = new Random();
        Console.WriteLine("Welcome to a game of snake and ladders!");
        int Player1Position = 0;
        int Player2Position = 0;
        bool CurrentPlayer = true;
        while (Player1Position < 100 || Player2Position < 100)
        {
            if (CurrentPlayer == true)
            {
                Console.WriteLine(" ");
                Console.WriteLine("Current Player is Player 1!");
                Console.WriteLine("Player is at " + Player1Position);
                Program.DisplayChoices();

                int choice = int.Parse(Console.ReadLine());

                if (choice == 1)
                {
                    int RolledValue = random.Next(1, 7);
                    if (Player1Position + RolledValue > 100)
                    {
                        Console.WriteLine("Rolled value too great, Player stays at same place.");
                        CurrentPlayer = false;
                    }
                    if (Player1Position + RolledValue <= 100)
                    {
                        Player1Position += RolledValue;
                        Console.WriteLine("Player advances by " + RolledValue + " Places");
                        if (Player1Position == 100)
                        {
                            Console.WriteLine("Player 1 wins!!!");
                            break;
                        }
                        int Luck = random.Next(0, 3);
                        if (Luck == 0)
                        {
                            Console.WriteLine("Player found a snake!");
                            Console.WriteLine("Player goes back by dice value!");
                            Player1Position -= RolledValue;
                            CurrentPlayer = false;
                        }
                        else if (Luck == 1)
                        {
                            CurrentPlayer = false;
                        }
                        else
                        {
                            Console.WriteLine("Player found a ladder!");
                            Console.WriteLine("Player advances by dice value!");
                            Console.WriteLine("Player plays again!");
                        }
                    }

                }
                else if (choice == 2)
                {
                    Console.WriteLine("Player 2 Wins by Default!");
                    break;
                }
            }
            else
            {
                Console.WriteLine(" ");
                Console.WriteLine("Current Player is Player 2!");
                Console.WriteLine("Player is at " + Player2Position);
                Program.DisplayChoices();

                int choice = int.Parse(Console.ReadLine());

                if (choice == 1)
                {
                    int RolledValue = random.Next(1, 7);
                    if (Player2Position + RolledValue > 100)
                    {
                        Console.WriteLine("Rolled value too great, Player stays at same place.");
                        CurrentPlayer = true;
                    }
                    if (Player2Position + RolledValue <= 100)
                    {
                        Player2Position += RolledValue;
                        Console.WriteLine("Player advances by " + RolledValue + " Places");
                        if (Player2Position == 100)
                        {
                            Console.WriteLine("Player 2 wins!!");
                            break;
                        }
                        int Luck = random.Next(0, 3);
                        if (Luck == 0)
                        {
                            Console.WriteLine("Player found a snake!");
                            Console.WriteLine("Player goes back by dice value!");
                            Player2Position -= RolledValue;
                            CurrentPlayer = true;

                        }
                        else if (Luck == 1)
                        {
                            CurrentPlayer = true;

                        }
                        else
                        {
                            Console.WriteLine("Player found a ladder!");
                            Console.WriteLine("Player advances by dice value!");
                            Console.WriteLine("Player plays again!");
                        }
                    }
                }
                else if (choice == 2)
                {
                    Console.WriteLine("Player 1 Wins by Default!");
                    break;
                }
            }
        }
    }
}
