struct Area {
    var squareMeter: Double
    
    init(fromPy py: Double) {
        self.squareMeter = py * 3.3058
        print("\(squareMeter)")
    }
    
    init(fromSquareMeter squareMeter: Double) {
        self.squareMeter = squareMeter
    }
    
    init(value: Double) {
        squareMeter = value
    }
    
    init(_ value: Double) {
        squareMeter = value
    }
}

let room1: Area = Area(fromPy: 16.0)
// 52.8928

let room2: Area = Area(fromSquareMeter: 33.06)
print(room2.squareMeter)
// 33.06

let room3: Area = Area(value: 32)
print(room3.squareMeter)
// 32.0

let room4: Area = Area(55)
print(room4.squareMeter)
// 55.0
