//
//  ListViewController.swift
//  KakePrototype
//
//  Created by Yoshinori Shibahara on 2021/02/08.
//

import UIKit
import RealmSwift

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var listTableView: UITableView!
    
    let realm = RealmService.shared.realm
    var foods: Results<Food>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foods = realm.objects(Food.self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        foods = realm.objects(Food.self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foodCell:ResultTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "FOOD_CELL") as? ResultTableViewCell
        foodCell.foodNameLabel.text = foods[indexPath.row].foodName
        foodCell.expiresAtLabel.text = foods[indexPath.row].expiresAt
        return foodCell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            RealmService.shared.delete(books[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
