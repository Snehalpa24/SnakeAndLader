using System;

namespace UC6SnakeLadder
{
    public class SnakeLadder
    {
        static void Main(string[] args)
        {
            int position = 0;
            int max = 100;
            int Player1 = 0;
            int diceCount = 0;
            while (position < max)
            {

                int dice = neww.RollDice();
                diceCount++;
                Console.WriteLine("Dice value is : " + dice);

                int option = neww.getOptions();
                Console.WriteLine("Option is : " + option);


                switch (option)
                {
                    case 2:
                        if (position + dice > max)
                        {
                            position = position;
                            break;
                        }
                        else
                        {
                            position = position + dice;
                            Console.WriteLine("current position : " + position);
                            break;
                        }
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
            Console.WriteLine("The number  of time dice rolld is  : " + diceCount);

        }
    }
}
