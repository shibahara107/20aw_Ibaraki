//
//  AddViewController.swift
//  KakePrototype
//
//  Created by Yoshinori Shibahara on 2021/02/08.
//

import UIKit
import RealmSwift

class AddViewController: UIViewController {
    
    @IBOutlet var foodNameTextField: UITextField!
    @IBOutlet var foodNumberTextField: UITextField!
    @IBOutlet var foodPlaceTextField: UITextField!
    @IBOutlet var expiresAtDatePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
    
    @IBAction func saveBtnWasPressed() {
        guard let foodName = foodNameTextField.text else{
            return
        }
        guard let foodNumber = foodNumberTextField.text else{
            return
        }
        guard let foodPlace = foodPlaceTextField.text else{
            return
        }
        guard let expiresAt = expiresAtDatePicker.date else {
            return
        }
        saveFood(foodName: foodName, foodNumber: foodNumber, foodPlace: foodPlace, expiresAt: expiresAt)
    }
    
    @IBAction func allBtnWasPressed() {
        performSegue(withIdentifier: "TO_ALL_VC", sender: nil)
    }
    
    func saveFood(foodName: String, foodNumber: String, foodPlace: String, expiresAt: Date){
        let food = Food(foodName: foodName, foodNumber: foodNumber, foodPlace: foodPlace, expiresAt: expiresAt)
        RealmService.shared.create(food)
    }
}
