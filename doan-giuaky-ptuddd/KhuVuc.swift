//
//  KhuVuc.swift
//  doan-giuaky-ptuddd
//
//  Created by Nguyen Nhan on 4/27/17.
//  Copyright © 2017 Huynh Thanh Nhan. All rights reserved.
//

import Foundation
import FMDB
import UIKit

class KhuVuc : NSObject {
    var maKV:String?
    var tenKV:String?
    var moTa:String?
    var hinhAnh:String?
    
    class func selectAll() -> NSArray {
        Utils.database!.open()
        let sql = "SELECT * FROM KhuVuc"
        let resultSet: FMResultSet! = Utils.database!.executeQuery(sql, withArgumentsIn: nil) as FMResultSet
        let personMArray = NSMutableArray()
        if resultSet != nil {
            while resultSet.next() {
                let kv = KhuVuc()
                kv.maKV = resultSet.string(forColumn: "MaKV")
                kv.tenKV = resultSet.string(forColumn: "TenKV")
                kv.moTa = resultSet.string(forColumn: "MoTa")
                //kv.hinhAnh = resultSet.string(forColumn: "HinhAnh")
                personMArray.add(kv)
            }
        }
        Utils.database!.close()
        return NSArray(array: personMArray)
    }
    
    func insert(kv:KhuVuc) {
        Utils.database!.open()
        let sql = "INSERT INTO KhuVuc (MaKV,TenKV,MoTa) VALUES (?, ?, ?)"
        Utils.database!.executeUpdate(sql, withArgumentsIn: [kv.maKV!,kv.tenKV!,kv.moTa!])
        Utils.database!.close()
    }
    func delete(kv:KhuVuc) {
        Utils.database!.open()
        let sql = "DELETE FROM KhuVuc WHERE MaKV = ?"
        Utils.database!.executeUpdate(sql, withArgumentsIn: [kv.maKV!])
        Utils.database!.close()
    }
    
    
    
}
