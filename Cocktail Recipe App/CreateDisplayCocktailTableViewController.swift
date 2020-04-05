//
//  CreateDisplayCocktailTableViewController.swift
//  Cocktail Recipe App
//
//  Created by Oliver Toohey on 5/4/20.
//  Copyright © 2020 Oliver Toohey. All rights reserved.
//

import UIKit

class CreateDisplayCocktailTableViewController: UITableViewController {

    // values for entering name, instructions and ingredients
    var createCocktailEntryValues = ["Enter name of cocktail", "Enter instructions for making cocktail", "Add ingredient"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        // section titles
        switch section {
        case 0:
            return "Cocktail Name:"
        case 1:
            return "Instructions"
        case 2:
            return "Ingredients"
        default:
            return "Should not display"
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cocktailCell", for: indexPath)

        // button labels
        
        if indexPath.row == 0 {
            cell.textLabel?.text = createCocktailEntryValues[indexPath[0]]
        } else if indexPath.row == 1 {
            cell.textLabel?.text = createCocktailEntryValues[indexPath[1]]
        } else {
            cell.textLabel?.text = createCocktailEntryValues[indexPath[2]]
        }
        
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            self.performSegue(withIdentifier: "editNameSegue", sender: self)
        } else if indexPath.section == 1 {
            self.performSegue(withIdentifier: "editInstructionsSegue", sender: self)
        } else {
            self.performSegue(withIdentifier: "addIngredientSegue", sender: self)
        }
         
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
