let eur = 4.50
let usd = 4.20

System.Console.Write("Podaj kwotę w PLN: ")
let kwota = float (System.Console.ReadLine())

System.Console.Write("Wybierz walutę (EUR/USD): ")
let waluta = System.Console.ReadLine().ToUpper()

let wynik =
    match waluta with
    | "EUR" -> kwota / eur
    | "USD" -> kwota / usd
    | _ -> nan

if System.Double.IsNaN wynik then
    System.Console.WriteLine("Nieznana waluta.")
else
    System.Console.WriteLine($"Po przeliczeniu: {wynik:F2} {waluta}")
