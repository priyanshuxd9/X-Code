import Foundation

func printHelloWorld(str:String){
    print(str)
}

printHelloWorld(str: "Hi there")

func sumNumbers(a:Int, b:Int){
    let sum = a + b
    print(sum)
}
sumNumbers(a: 10, b: 20)
//we can use parameter labels too here
func doProduct(a:Float, b:Float) -> Float{
    let product = a * b
    return product
}
let product=doProduct(a: 3.14, b: 2.37)
print(product)
