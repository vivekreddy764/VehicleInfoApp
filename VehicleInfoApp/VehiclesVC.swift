//
//  VehiclesVC.swift
//  VehicleInfoApp
//
//  Created by Saivivek Reddy on 23/04/2022.
//

import UIKit

class VehiclesVC: UIViewController, UISearchBarDelegate {
    
    @IBOutlet var dataTableView: UITableView!
    @IBOutlet weak var vehicleSearchbar: UISearchBar!
    
    var vehiclesArray: [VehicleInfo] = []
    var searchedVehiclesArray: [VehicleInfo] = []
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        vehicleSearchbar.delegate = self
        
        if !DataBaseHelper.shareInstance.getSavedStatus() {
            
            vehiclesArray = VehicleData.saveVehicles()
        }else{
            
            vehiclesArray = DataBaseHelper.shareInstance.fetchVehicles()
        }
        
        
        searchedVehiclesArray = vehiclesArray
        
        DataBaseHelper.shareInstance.setSavedStatus()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "vehicleDetails") {
            
            let vc = segue.destination as! VehicleDetailsVC
            let vehicle = searchedVehiclesArray[selectedIndex]
            
            var v = Vehicle()
            v.name = vehicle.name ?? ""
            v.make = vehicle.make ?? ""
            v.model = vehicle.model ?? ""
            v.imageData = vehicle.image ?? Data()
            v.image =  ""
            v.description = vehicle.desc ?? ""
            
            vc.selectedVehicle = v
            
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        searchedVehiclesArray = vehiclesArray
        if searchText != "" {
            
            let filtered = vehiclesArray.filter{ $0.name!.lowercased().contains(searchText.lowercased()) }
            searchedVehiclesArray = filtered
        }
        
        dataTableView.reloadData()
        
    }
    
}


extension VehiclesVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchedVehiclesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VehicleTableViewCell
        cell.backgroundColor = .clear
                
        let vehicle = searchedVehiclesArray[indexPath.row]
        
        cell.vehicleLbl.text = vehicle.name
        cell.yearLbl.text = vehicle.model
        cell.imgView.image = UIImage(data: vehicle.image!)
        
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
