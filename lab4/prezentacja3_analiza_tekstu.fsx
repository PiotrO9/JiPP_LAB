System.Console.Write("Podaj tekst: ")
let tekst = System.Console.ReadLine()

let slowa =
    tekst.Split([|' '|], System.StringSplitOptions.RemoveEmptyEntries)
    |> Array.toList

let liczbaSlow = slowa.Length

let znakiBezSpacji =
    slowa
    |> List.fold (fun acc s -> acc + s.Length) 0

System.Console.WriteLine($"Liczba słów: {liczbaSlow}")
System.Console.WriteLine($"Liczba znaków (bez spacji): {znakiBezSpacji}")
