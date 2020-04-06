//
//  AddIngredientsViewController.swift
//  Cocktail Recipe App
//
//  Created by Oliver Toohey on 5/4/20.
//  Copyright © 2020 Oliver Toohey. All rights reserved.
//

import UIKit

class AddIngredientViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var ingredientPickerView: UIPickerView!
    @IBOutlet weak var measurementTextField: UITextField!
    
    var pickerData: [String] = [String]()
    
    @IBAction func confirmIngredient(_ sender: Any) {
        let measurement = measurementTextField.text!
        
        guard measurement != "" else {
            displayMessage(title: "Error", message: "Please enter how much of the ingredient is needed")
            return
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerData = ["Gin", "Vodka", "Rum", "Whiskey", "Soda Water", "Tonic Water", "Ginger Beer", "Lime", "Orange", "Cherry", "Olive"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func displayMessage(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
        alertController.view.tintColor = .systemRed
        self.present(alertController, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
