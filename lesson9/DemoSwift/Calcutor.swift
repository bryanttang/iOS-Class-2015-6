//
//  Calcutor.swift
//  DemoSwift
//
//  Created by bryant tang on 5/4/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

import UIKit

class Calculator: NSObject {
    var opand1:Double?
    var opand2:Double!
    var result=[Double]()
    override init() {
        
    }
    
    init(opand1 : Double, opand2 : Double) {
        super.init()
        self.opand1 = opand1
        self.opand2 = opand2
        
        
    }
    
    func add(){
        result.append(self.opand1! + self.opand2);
    }
    
    func printValue(){
        println("print \(opand1) ")
        println("print \(opand2) ")
    }
    
    func printResult(){
        println("Result: \(result)")
    }
    
    
}
