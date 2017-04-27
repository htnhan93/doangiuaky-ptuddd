//
//  ViewControllerBA.swift
//  doan-giuaky-ptuddd
//
//  Created by Nguyen Nhan on 4/22/17.
//  Copyright © 2017 Huynh Thanh Nhan. All rights reserved.
//

import UIKit

class ViewControllerBA: UIViewController {

    @IBOutlet weak var btnThem: UIButton!
    @IBOutlet weak var imgBA: UIImageView!
    @IBOutlet weak var txtTT: UITextField!
    @IBOutlet weak var txtKV: UITextField!
    @IBOutlet weak var txtSoBan: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func ThemBanAn(_ sender: Any) {
        let ba = BanAn()
        ba.soBan = txtSoBan.text
        ba.khuVuc = txtKV.text
        ba.thongTin = txtTT.text
        ba.hinhAnh = "0"
        ba.insert(ba: ba)
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
