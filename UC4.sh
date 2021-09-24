using System;

namespace UC4SnakeLadder
{
    public class SnakeLadder
    {
        static void Main(string[] args)
        {
            int position = 0;
            int Max = 100;
            int Player1 = 0;
            while (position < 100)
            {
                int dice = neww.RollDice();
                Console.WriteLine("Dice value is : " + dice);
                int option = neww.getOptions();
                Console.WriteLine("Option is : " + option);

                switch (option)
                {
                    case 2:
                        position = position + dice;
                        Console.WriteLine("current position : " + position);
                        break;
                    case 1:
                        if (position <= 0)
                        {
                            position = 0;
                            Console.WriteLine("current position : " + position);
                        }
                        else
                            position = position - dice;
                        Console.WriteLine("current position : " + position);
                        break;
                    default:
                        position = position;
                        Console.WriteLine("current position : " + position);
                        break;
                }
            }
            Player1 = position;
            Console.WriteLine("Player Position is : " + Player1);

        }
    }
}
