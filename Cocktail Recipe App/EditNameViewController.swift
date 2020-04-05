//
//  EditNameViewController.swift
//  Cocktail Recipe App
//
//  Created by Oliver Toohey on 5/4/20.
//  Copyright © 2020 Oliver Toohey. All rights reserved.
//

import UIKit

class EditNameViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBAction func confirmName(_ sender: Any) {
    
        // create variable from textfield
        let name = nameTextField.text
        
        // check if string is empty, display error if no name entered
        guard (name!) != "" else {
            displayMessage(title: "Error", message: "Please enter a name for your cocktail")
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
