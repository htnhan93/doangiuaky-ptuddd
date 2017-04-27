//
//  ViewControllerMA.swift
//  doan-giuaky-ptuddd
//
//  Created by Nguyen Nhan on 4/27/17.
//  Copyright © 2017 Huynh Thanh Nhan. All rights reserved.
//

import UIKit

class ViewControllerMA: UIViewController {

    @IBAction func themMonAn(_ sender: Any) {
        let ma = MonAn()
        ma.maMA = txtMa.text
        ma.tenMA = txtTen.text
        ma.giaTien = txtGiaTien.text
        ma.moTa = txtMoTa.text
       
        ma.insert(ma: ma)

    }
    @IBOutlet weak var btnThem: UIButton!
    @IBOutlet weak var txtMoTa: UITextField!
    @IBOutlet weak var txtGiaTien: UITextField!
    @IBOutlet weak var txtTen: UITextField!
    @IBOutlet weak var txtMa: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
