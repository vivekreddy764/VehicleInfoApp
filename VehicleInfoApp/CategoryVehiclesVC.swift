//
//  CategoryVehiclesVC.swift
//  VehicleInfoApp
//
//  Created by Saivivek Reddy on 23/04/2022.
//

import UIKit

class CategoryVehiclesVC: UIViewController, UISearchBarDelegate {
    
    @IBOutlet var dataTableView: UITableView!
    @IBOutlet weak var vehicleSearchbar: UISearchBar!
    
    var vehiclesArray: [Vehicle] = []
    var searchedVehiclesArray: [Vehicle] = []
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        vehicleSearchbar.delegate = self
        searchedVehiclesArray = vehiclesArray
        
        self.tabBarController?.tabBar.isHidden = true
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "vehicleDetails") {
            
            let vc = segue.destination as! VehicleDetailsVC
            let vehicle = searchedVehiclesArray[selectedIndex]
            vc.selectedVehicle = vehicle
            
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        searchedVehiclesArray = vehiclesArray
        if searchText != "" {
            
            let filtered = vehiclesArray.filter{ $0.name.lowercased().contains(searchText.lowercased()) }
            searchedVehiclesArray = filtered
        }
        
        dataTableView.reloadData()
    }
}


extension CategoryVehiclesVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchedVehiclesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VehicleTableViewCell
        cell.backgroundColor = .clear
                
        let vehicle = searchedVehiclesArray[indexPath.row]
        
        cell.vehicleLbl.text = vehicle.name
        cell.yearLbl.text = vehicle.model
        cell.imgView.image = UIImage(data: vehicle.imageData)
        
        cell.imgView.layer.cornerRadius = 8
        cell.imgView.clipsToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.row
        self.performSegue(withIdentifier: "vehicleDetails", sender: self)
    }
}
