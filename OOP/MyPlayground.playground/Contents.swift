import Cocoa

class Car {
    var coulour = "Black"
    init(){
    }
    convenience init?(CarCoulour: String){ //Can add Function in init
        
        self.init()
        coulour = CarCoulour
    }
    func drive (){
        print("Car is driving")
    }
}
class MyselfCar: Car {
    override func drive() {
        //print("Car is stopping")
        super.drive()
        
        print("bechin")
    }
}

let mycar = MyselfCar()

print(mycar.drive())

