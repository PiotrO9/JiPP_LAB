System.Console.Write("Podaj wagę w kg: ")
let waga = float (System.Console.ReadLine())

System.Console.Write("Podaj wzrost w metrach (np. 1.82): ")
let wzrost = float (System.Console.ReadLine())

let bmi = waga / (wzrost * wzrost)

let kategoria =
    if bmi < 18.5 then "niedowaga"
    elif bmi < 25.0 then "waga prawidłowa"
    elif bmi < 30.0 then "nadwaga"
    else "otyłość"

System.Console.WriteLine($"BMI = {bmi:F2}")
System.Console.WriteLine($"Kategoria: {kategoria}")
