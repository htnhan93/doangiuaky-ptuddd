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
    var soBan:String?
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
                ba.soBan = resultSet.string(forColumn: "SoBan")
                ba.khuVuc = resultSet.string(forColumn: "KhuVuc")
                ba.thongTin = resultSet.string(forColumn: "ThongTin")
                ba.hinhAnh = resultSet.string(forColumn: "HinhAnh")
                personMArray.add(ba)
            }
        }
        Utils.database!.close()
        return NSArray(array: personMArray)
    }
    
    func insert(ba:BanAn) {
        Utils.database!.open()
        let sql = "INSERT INTO BanAn (SoBan,KhuVuc,ThongTin,HinhAnh) VALUES (?, ?, ?, ?)"
        Utils.database!.executeUpdate(sql, withArgumentsIn: [ba.soBan!,ba.khuVuc!,ba.thongTin!,ba.hinhAnh!])
        Utils.database!.close()
    }
    func delete(ba:BanAn) {
        Utils.database!.open()
        let sql = "DELETE FROM BanAn WHERE SoBan = ?"
        Utils.database!.executeUpdate(sql, withArgumentsIn: [ba.soBan!])
        Utils.database!.close()
    }

    

}

