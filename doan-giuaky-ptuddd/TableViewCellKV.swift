//
//  TableViewCellKV.swift
//  doan-giuaky-ptuddd
//
//  Created by Nguyen Nhan on 4/27/17.
//  Copyright © 2017 Huynh Thanh Nhan. All rights reserved.
//

import UIKit

class TableViewCellKV: UITableViewCell {

    @IBOutlet weak var lblMoTa: UILabel!
    @IBOutlet weak var lblTenKV: UILabel!
    @IBOutlet weak var lblMaKV: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
