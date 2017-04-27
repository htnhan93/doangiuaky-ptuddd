//
//  ViewControllerKV.swift
//  doan-giuaky-ptuddd
//
//  Created by Nguyen Nhan on 4/27/17.
//  Copyright © 2017 Huynh Thanh Nhan. All rights reserved.
//

import UIKit

class ViewControllerKV: UIViewController {

    @IBOutlet weak var btnThem: UIButton!
    @IBOutlet weak var txtMoTa: UITextField!
    @IBOutlet weak var txtTenKV: UITextField!
    @IBOutlet weak var txtMaKV: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func themKhuVuc(_ sender: Any) {
        let kv = KhuVuc()
        kv.maKV = txtMaKV.text
        kv.tenKV = txtTenKV.text
        kv.moTa = txtMoTa.text
        //kv.hinhAnh = "0"
        kv.insert(kv: kv)

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
