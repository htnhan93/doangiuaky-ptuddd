//
//  TableViewCellBA.swift
//  doan-giuaky-ptuddd
//
//  Created by Nguyen Nhan on 4/21/17.
//  Copyright © 2017 Huynh Thanh Nhan. All rights reserved.
//

import UIKit

class TableViewCellBA: UITableViewCell {

    @IBOutlet weak var ImgBA: UIImageView!
    @IBOutlet weak var lblKV: UILabel!
    @IBOutlet weak var lblTT: UILabel!
    @IBOutlet weak var lblSoBan: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
