//
//  BanAn.swift
//  doan-giuaky-ptuddd
//
//  Created by Nguyen Nhan on 4/26/17.
//  Copyright © 2017 Huynh Thanh Nhan. All rights reserved.
//

import Foundation
import FMDB
import UIKit

class BanAn : NSObject {
    var soBan:Int?
    var khuVuc:String?
    var thongTin:String?
    var hinhAnh:String?
    
    class func selectAll() -> NSArray {
        Utils.database!.open()
        let sql = "SELECT * FROM BanAn"
        let resultSet: FMResultSet! = Utils.database!.executeQuery(sql, withArgumentsIn: nil) as FMResultSet
        let personMArray = NSMutableArray()
        if resultSet != nil {
            while resultSet.next() {
                let ba = BanAn()
                //ba.soBan = Int(resultSet.string(forColumn: "SoBan"))
                ba.khuVuc = resultSet.string(forColumn: "KhuVuc")
                ba.thongTin = resultSet.string(forColumn: "ThongTin")
                //ba.hinhAnh = resultSet.string(forColumn: "HinhAnh")
                personMArray.add(ba)
            }
        }
        Utils.database!.close()
        return NSArray(array: personMArray)
    }

}

