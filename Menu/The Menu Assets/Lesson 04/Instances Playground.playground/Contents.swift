import UIKit

var a = 1

struct MenuItem {
    
    var name: String
    var price: String = "$2.99"
    var imageName: String
    
    func testPrint() {
        print(name)
    }
}

var firstItem = MenuItem(name: "Onigiri", imageName: "onigiri")
var secondItem = MenuItem(name: "Meguro Sushi", imageName: "meguro-sushi")

var myInts:[Int] = [1,2,3,4,5]

var menuItems:[MenuItem] = [MenuItem(name: "Onigiri", imageName: "onigiri"),
                            MenuItem(name: "Meguro Sushi", imageName: "meguro-sushi"),
                            MenuItem(name: "Tako Sushi", imageName: "tako-sushi"),
                            MenuItem(name: "Fourth Item", imageName: "fourth")]
