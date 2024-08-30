
namespace targetResposta
{
    class Program
    {
        static void Main(String[] args)
        {
            //Console.WriteLine("Converse comigo:");
            string inversora = "teste";
            int b = inversora.Length;
            int c = b;
          
            for (int i = inversora.Length - 1;i >= 0;  i--)
            {
                Console.Write(inversora[i]);
            }
        }
    }
}