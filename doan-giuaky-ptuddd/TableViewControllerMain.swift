//
//  TableViewControllerMain.swift
//  doan-giuaky-ptuddd
//
//  Created by Nguyen Nhan on 4/21/17.
//  Copyright © 2017 Huynh Thanh Nhan. All rights reserved.
//

import UIKit

class TableViewControllerMain: UITableViewController {

    var number = 10
    
    var lst_BA = [BanAn]()
    @IBOutlet weak var btnQL: UIBarButtonItem!
       override func viewDidLoad() {
        super.viewDidLoad()
        title="DANH SÁCH BÀN ĂN"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in thfe navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        if Utils.database == nil {
            Utils.databaseSetup()
        }
        lst_BA=BanAn.selectAll() as! [BanAn]
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
        return lst_BA.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellBA", for: indexPath) as! TableViewCellBA

        // Configure the cell..	.
        let ba = lst_BA[indexPath.row]
        //cell.lblSoBan.text=ba.soBan.
        cell.lblKV.text=ba.khuVuc
        cell.lblTT.text=ba.thongTin
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
