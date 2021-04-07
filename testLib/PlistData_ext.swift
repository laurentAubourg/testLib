//
//  PlistData_ext.swift
//  testLib
//
//  Created by laurent aubourg on 06/04/2021.
//

import Foundation
import plistData

extension PLD_class{
    
 
    func getValueof(p_var:String)-> Any?{
        
         guard (dynamicData[p_var] != nil)else{
             return nil
        }
        return dynamicData[p_var]
 
    }
    func getValueof(p_let:String)-> Any?{
       
        guard (data[p_let] != nil)else{
            return nil
       }
       return data[p_let] 

   }
}
