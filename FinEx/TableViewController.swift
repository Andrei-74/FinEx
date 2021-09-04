//
//  TableViewController.swift
//  FinEx
//
//  Created by Андрей Костицин on 29.08.2021.
//

import UIKit

class TableViewController: UITableViewController {

    let objects = [
        Finex(name: "Fix Price Group", count: "15 штук", summ: "9900.46 ₽"),
        Finex(name: "Аэрофлот", count: "10 штук", summ: "702.1 ₽"),
        Finex(name: "ТГК-1", count: "1 лот", summ: "1148.44 ₽")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Finex"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
        
    }

    // MARK: - Table view data sourceß

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "finexCell", for: indexPath) as! FinexTableViewCell
        let object = objects[indexPath.row]
        cell.set(object: object)
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    @IBAction func cancelAction(_ sender: UIStoryboardSegue) {
    }
    
}
