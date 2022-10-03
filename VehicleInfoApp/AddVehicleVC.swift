//
//  AddVehicleVC.swift
//  VehicleInfoApp
//
//  Created by Saivivek Reddy on 23/04/2022.
//

import UIKit

class AddVehicleVC: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var selectImgBtn: UIButton!
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var makeTF: UITextField!
    @IBOutlet weak var modelTF: UITextField!
    @IBOutlet weak var descriptionTV: UITextView!
    
    var isImageSelected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.layer.cornerRadius = imgView.frame.size.height / 2
        imgView.clipsToBounds = true
        imgView.layer.borderColor = UIColor.lightGray.cgColor
        imgView.layer.borderWidth = 1
        
        descriptionTV.delegate = self
        descriptionTV.textColor = .lightGray
        descriptionTV.layer.cornerRadius = 8
        descriptionTV.layer.borderColor = UIColor.lightGray.cgColor
        descriptionTV.layer.borderWidth = 1
        
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @IBAction func selectImgeBtnClicked(_ sender: Any) {
        
        let obj = SelectImage()
        obj.VC = self
        obj.delegate = self
        obj.select()
        
    }
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        if textView.textColor == .lightGray {
            
            textView.text = ""
            textView.textColor = .black
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        
        if textView.text == "" {
            
            textView.text = "Description"
            textView.textColor = .lightGray
        }
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        
        if !isImageSelected {
            
            self.showAlert(str: "Please select image of vehicle")
        }else if nameTF.text == "" {
            
            self.showAlert(str: "Please enter name of vehicle")
        }else if makeTF.text == "" {
            
            self.showAlert(str: "Please enter make of vehicle")
        }else if modelTF.text == "" {
            
            self.showAlert(str: "Please enter model of vehicle")
        }else if descriptionTV.text == "Description" {
            
            self.showAlert(str: "Please enter description of vehicle")
        }else {
            
            let imgData = imgView.image?.pngData() ?? Data()
            let vehicle1 = Vehicle(name: nameTF.text!,
                                   model: modelTF.text!,
                                   make: makeTF.text!,
                                   imageData: imgData,
                                   image: "",
                                   description: descriptionTV.text!)
            DataBaseHelper.shareInstance.saveVehicle(vehicle: vehicle1)
            
            
            let alert = UIAlertController(title: "Alert!", message: "Vehicle Saved successfully!", preferredStyle: UIAlertController.Style.alert)

            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { _ in
                
                self.performSegue(withIdentifier: "VehiclesSegue", sender: self)
            }))
            self.present(alert, animated: true, completion: nil)

        }
        
    }
    
    func showAlert(str: String) -> Void {
        
        let alert = UIAlertController(title: "Alert!", message: str, preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { _ in
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}


extension AddVehicleVC : UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as? UIImage
        if let image = image {
            
            self.isImageSelected = true
            imgView.image = image
        }
        picker.dismiss(animated: true)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
    
}
