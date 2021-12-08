//
//  User.swift
//  ViewLifeCycleApp
//
//  Created by user on 2021/11/09.
//

import Foundation


struct User {
    
    var name:String
    var age:Int
    var address:String
    
    init() {
        self.name = ""
        self.age  = 0
        self.address = ""
    }
    
    init(name:String,age:Int,address:String) {
        self.name = name
        self.age = age
        self.address = address
        
    }
    
}
