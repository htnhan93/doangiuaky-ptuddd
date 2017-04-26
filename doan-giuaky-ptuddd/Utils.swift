//
//  Utils.swift
//  doan-giuaky-ptuddd
//
//  Created by Nguyen Nhan on 4/26/17.
//  Copyright © 2017 Huynh Thanh Nhan. All rights reserved.
//

import FMDB

class Utils: NSObject {
    
    static var database: FMDatabase? = nil
    class func databaseSetup() {
        if database == nil {
            let docsDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            let dpPath = docsDir.appendingPathComponent("QLQA.sqlite")
            print("dpPath \(dpPath)")
            let file = FileManager.default
            if(!file.fileExists(atPath: dpPath.path)) {
                let dpPathApp = Bundle.main.path(forResource: "QLQA", ofType: "sqlite")
                //            print("dpPathApp" + String(dpPathApp))
                do {
                    try file.copyItem(atPath: dpPathApp!, toPath: dpPath.path)
                    print("copyItemAtPath success")
                } catch {
                    print("copyItemAtPath fail")
                }
            }
            database = FMDatabase(path: dpPath.path)
        }
    }
}
