//
//  VehicleDetailsVC.swift
//  VehicleInfoApp
//
//  Created by Saivivek Reddy on 23/04/2022.
//

import UIKit

class VehicleDetailsVC: UIViewController {
        
    var selectedVehicle = Vehicle()
    var isFav = false
    var favoriteVehicle: Favorites?
    
    
    @IBOutlet weak var favoriteBtn: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var makeLbl: UILabel!
    @IBOutlet weak var modelLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgView.image = UIImage(data: selectedVehicle.imageData)
        nameLbl.text = "Name:   " + selectedVehicle.name
        makeLbl.text = "Make:   " + selectedVehicle.make
        modelLbl.text = "Model:  " + selectedVehicle.model
        descriptionLbl.text = selectedVehicle.description
        
        self.tabBarController?.tabBar.isHidden = true
        self.checkIsFav()
    }
    
    func checkIsFav() -> Void {
        
        do {
            let favoritesList: [Favorites] = try context.fetch(Favorites.fetchRequest())
            for fav in favoritesList {
                if fav.name == selectedVehicle.name{
                   
                    favoriteVehicle = fav
                    self.isFav = true
                }
            }
        } catch {
            print(error.localizedDescription)
        }
        
        if isFav {
            
            favoriteBtn.setTitle("Remove From Favorite", for: .normal)
        }else{
            
            favoriteBtn.setTitle("Add to Favorite", for: .normal)
        }
    }
    
    
    @IBAction func favoriteBtnClicked(_ sender: Any) {
        
        if isFav {
            
            if let savedFav = favoriteVehicle {
                
                self.context.delete(savedFav)
                favoriteVehicle = nil
                isFav = false
            }
            
        }else{
            
            let fav = Favorites(context: self.context)
            
            fav.name = selectedVehicle.name
            fav.model = selectedVehicle.model
            fav.make = selectedVehicle.make
            fav.image = selectedVehicle.imageData
            fav.desc = selectedVehicle.description
            
            do {
                try context.save()
            } catch {
                print(error.localizedDescription)
            }
        }
        
        self.checkIsFav()
    }
}
