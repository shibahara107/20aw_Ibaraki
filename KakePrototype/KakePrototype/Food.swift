//
//  Food.swift
//  KakePrototype
//
//  Created by Yoshinori Shibahara on 2021/02/08.
//

import Foundation
import RealmSwift

@objcMembers class Food: Object {
    
    dynamic var foodID = UUID().uuidString
    dynamic var foodName: String = ""
    dynamic var foodNumber: String = ""
    dynamic var foodPlace: String = ""
    dynamic var expiresAt: Date = Date()
    
    convenience init(foodName: String, foodNumber: String, foodPlace: String, expiresAt: Date) {
        self.init()
        self.foodName = foodName
        self.foodNumber = foodNumber
        self.foodPlace = foodPlace
        self.expiresAt = expiresAt
    }
    
    override static func primaryKey() -> String? {
        return "foodID"
    }
}
