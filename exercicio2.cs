namespace targetReposta {

	class Program {

		static void Main(string[] args)
		{
			Console.WriteLine("Verificador de fibonacci, digite o valor: ");
			int f = Convert.ToInt32(Console.ReadLine());
			VerificadorFibonnaci(f);

		}

		static void VerificadorFibonnaci(int f) {

			int a = 5 * f * f + 4;
			int b = 5 * f * f - 4;

			int c = (int)Math.Sqrt(a);
			int d = (int)Math.Sqrt(b);

			int e = c * c;
			int g = d * d;

			if (e == a | e == b | g == a || g == b) {
				Console.WriteLine("Este número pertence a sequencia de fibonaci !");
			}
			else
			{
				Console.WriteLine("Este número NÃO  pertence a sequencia de fibonacci");
			}
		}
	}
}