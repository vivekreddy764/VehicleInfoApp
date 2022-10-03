//
//  DataBaseHelper.swift
//  VehicleInfoApp
//
//  Created by Saivivek Reddy on 23/04/2022.
//

import UIKit
import CoreData

class DataBaseHelper {
    
    static let shareInstance = DataBaseHelper()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveVehicle(vehicle: Vehicle) {
        
        let imageInstance = VehicleInfo(context: context)
        imageInstance.name = vehicle.name
        imageInstance.desc = vehicle.description
        imageInstance.make = vehicle.make
        imageInstance.model = vehicle.model
        imageInstance.image = vehicle.imageData
            
        do {
            try context.save()
            print("Vehicle is saved")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchVehicles() -> [VehicleInfo] {
        
        var vehicleList: [VehicleInfo] = []
        
        do {
            vehicleList = try context.fetch(VehicleInfo.fetchRequest())
            
        } catch {
            print(error.localizedDescription)
        }

        return vehicleList
    }
    
    func setSavedStatus() {
        
        let imageInstance = SavedData(context: context)
        imageInstance.isSaved = true
            
        do {
            try context.save()
            print("Data Status is saved")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func getSavedStatus() -> Bool {
        
        var status: [SavedData] = []
        
        do {
            status = try context.fetch(SavedData.fetchRequest())
            
        } catch {
            print(error.localizedDescription)
        }

        if status.count > 0 {
            
            return status[0].isSaved
        }
        
        return false
    }
    
}
