//
//  EditInstructionsViewController.swift
//  Cocktail Recipe App
//
//  Created by Oliver Toohey on 5/4/20.
//  Copyright © 2020 Oliver Toohey. All rights reserved.
//

import UIKit

class EditInstructionsViewController: UIViewController {

    @IBOutlet weak var instructionsTextView: UITextView!
    
    
    @IBAction func confirmInstructions(_ sender: Any) {
        let instructions = instructionsTextView.text!
        
        // must fix contains
        
        guard instructions != "" || (instructions.contains("Lorem impsum") != false) else {
            displayMessage(title: "Error", message: "Please write new instructions")
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
