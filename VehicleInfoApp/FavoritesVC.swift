//
//  FavoritesVC.swift
//  VehicleInfoApp
//
//  Created by Saivivek Reddy on 23/04/2022.
//

import UIKit

class FavoritesVC: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var favoritesList: [Favorites] = []
    
    
    @IBOutlet weak var dataTableView: UITableView!
    
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.getFavoritesList()
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func getFavoritesList() -> Void {
        
        do {
            favoritesList = try context.fetch(Favorites.fetchRequest())
            dataTableView.reloadData()
            
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "vehicleDetails") {
            
            let vc = segue.destination as! VehicleDetailsVC
            let fav = favoritesList[selectedIndex]
            var vehicle = Vehicle()
            vehicle.name = fav.name ?? ""
            vehicle.model = fav.model ?? ""
            vehicle.make = fav.make ?? ""
            vehicle.image = ""
            vehicle.imageData = fav.image ?? Data()
            vehicle.description = fav.desc ?? ""
            vc.selectedVehicle = vehicle
            
        }
    }

}


extension FavoritesVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VehicleTableViewCell
        cell.backgroundColor = .clear
                
        let fav = favoritesList[indexPath.row]
        
        cell.vehicleLbl.text = fav.name
        cell.yearLbl.text = fav.model
        cell.imgView.image = UIImage(data: fav.image ?? Data())
        
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
