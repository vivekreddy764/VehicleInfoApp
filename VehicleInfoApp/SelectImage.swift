//
//  SelectImage.swift
//  VehicleInfoApp
//
//  Created by Saivivek Reddy on 23/04/2022.
//

import UIKit

class SelectImage: NSObject {
    
    var delegate: (UIImagePickerControllerDelegate & UINavigationControllerDelegate)?


    var VC = UIViewController()
    
    func select() -> Void {
        
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .alert)

        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
        }))



        actionSheet.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { action in
            self.selectImageFromGallery()
        }))

        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { action in
            self.takeImageFromCamera()
        }))

        VC.present(actionSheet, animated: true)
        
    }
    
    
    func selectImageFromGallery() {
        let pickerController = UIImagePickerController()
        pickerController.delegate = delegate
        VC.present(pickerController, animated: true)
    }

    func takeImageFromCamera() {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true

        imagePicker.delegate = delegate
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
        }
        VC.present(imagePicker, animated: true)
    }
}
