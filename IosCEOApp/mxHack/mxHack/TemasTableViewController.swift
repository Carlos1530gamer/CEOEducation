//
//  TemasTableViewController.swift
//  mxHack
//
//  Created by Usuario invitado on 8/9/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class TemasTableViewController: UITableViewController {

    var materia : String = ""
    
    var Calculo = ["Funciones","Derivadas"]
    var Fisica = ["Leyes de Newtow", "Gravedad"]
    var Algebra = ["Numero complejos","Desigualdades"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var NdeCell : Int = 0
        
        if "Algebra" == materia{ NdeCell =  Algebra.count}
        else if "Calculo" == materia{ NdeCell = Calculo.count}
        else if "Fisica" == materia{ NdeCell = Fisica.count}
        return NdeCell
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        if "Algebra" == materia{
                cell.textLabel?.text = Algebra[indexPath.row]
        } else if "Calculo" == materia{
            cell.textLabel?.text = Calculo[indexPath.row]
        } else if "Fisica" == materia {
            cell.textLabel?.text = Fisica[indexPath.row]
        }

        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "Videosegue"{
            if let n = segue.destination as? VideosCollectionViewController{
           n.materia1 = materia
        }
        
        
        
    }
 

}

}
