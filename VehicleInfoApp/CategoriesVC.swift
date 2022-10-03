//
//  CategoriesVC.swift
//  VehicleInfoApp
//
//  Created by Saivivek Reddy on 23/04/2022.
//

import UIKit

class CategoriesVC: UIViewController {

    @IBOutlet var CategoriesTableView: UITableView!
    var categoriesArray: [Category] = []
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        categoriesArray = VehicleData.getCategoriesVehicles()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "categoryVehiclesSegue") {
            
            let vc = segue.destination as! CategoryVehiclesVC
            let vehicle = categoriesArray[selectedIndex].vehicles
            vc.vehiclesArray = vehicle
            
        }
    }
}


extension CategoriesVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CategoriesTableViewCell
        cell.backgroundColor = .clear
        
        let category = categoriesArray[indexPath.row]
        cell.categoryLbl.text = category.categoryName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.row
        self.performSegue(withIdentifier: "categoryVehiclesSegue", sender: self)
    }
}
