//
//  VehicleClass.swift
//  iOS_Week_1
//
//  Created by Tahir Esirgen on 23.09.2021.
//

import Foundation
class Vehicle {
    var brand : String
    var hasEngine :Bool
    var info : VehicleStruct?
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    init(brand:String,hasEngine:Bool) {
        self.brand = brand
        self.hasEngine = hasEngine
    }
    
    func setInfobject(by value: VehicleStruct) -> Self {
        info = value
        return self
    }
}
class Bicycle : Vehicle
{
    override init(brand: String, hasEngine: Bool) {
        super.init(brand: "Salcano", hasEngine: false)
    }
    override func setInfobject(by value: VehicleStruct) -> Self {
        super.info = value
        return self
    }
    
}

class Car : Vehicle
{
    override init(brand: String, hasEngine: Bool) {
        super.init(brand: "BMW", hasEngine: true)
    }
    override func setInfobject(by value: VehicleStruct) -> Self {
        super.info = value
        return self
    }
}
