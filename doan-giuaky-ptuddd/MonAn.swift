//
//  MonAn.swift
//  doan-giuaky-ptuddd
//
//  Created by Nguyen Nhan on 4/27/17.
//  Copyright © 2017 Huynh Thanh Nhan. All rights reserved.
//

import Foundation
import FMDB
import UIKit

class MonAn : NSObject {
    var maMA:String?
    var tenMA:String?
    var giaTien:String?
    var moTa:String?
    
    class func selectAll() -> NSArray {
        Utils.database!.open()
        let sql = "SELECT * FROM MonAn"
        let resultSet: FMResultSet! = Utils.database!.executeQuery(sql, withArgumentsIn: nil) as FMResultSet
        let personMArray = NSMutableArray()
        if resultSet != nil {
            while resultSet.next() {
                let ma = MonAn()
                ma.maMA = resultSet.string(forColumn: "MaMA")
                ma.tenMA = resultSet.string(forColumn: "TenMA")
                ma.giaTien = resultSet.string(forColumn: "GiaTien")
                ma.moTa = resultSet.string(forColumn: "MoTa")
                personMArray.add(ma)
            }
        }
        Utils.database!.close()
        return NSArray(array: personMArray)
    }
    
    func insert(ma: MonAn) {
        Utils.database!.open()
        let sql = "INSERT INTO MonAn (MaMA,TenMA,GiaTien,MoTa) VALUES (?, ?, ?, ?)"
        Utils.database!.executeUpdate(sql, withArgumentsIn: [ma.maMA!,ma.tenMA!,ma.giaTien!,ma.moTa!])
        Utils.database!.close()
    }
    func delete(ma:MonAn) {
        Utils.database!.open()
        let sql = "DELETE FROM MonAn WHERE MaMA = ?"
        Utils.database!.executeUpdate(sql, withArgumentsIn: [ma.maMA!])
        Utils.database!.close()
    }
    
    
    
}
