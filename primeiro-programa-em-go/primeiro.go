package main
import "fmt"

func main() {
    
    var year int

    fmt.Print("Informe algum ano: ")
    fmt.Scanf("%d\n", &year)
    
    if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) {
        fmt.Print("29 dias em Fevereiro!! ^ - ^ \n")
    } else {
        fmt.Print("Apenas 28 dias... sad.")
    }
}