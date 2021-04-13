//
//  ViewController.swift
//  testLib
//
//  Created by laurent aubourg on 05/04/2021.
//

import UIKit
import PlistData_lib

class ViewController: UIViewController{
    var  PLD_obj : PLD_class?

   
    override func viewDidLoad() {
        super.viewDidLoad()
        PLD_obj = PLD_class(fileName:"game")
        var v1 = PLD_obj!.getValueof(p_var:"var1") as? Int
        let const1 = PLD_obj!.getValueof(p_let:"const1") as? Int
                 
        PLD_obj!.newVar(name:"var_dyn",value:15)
        PLD_obj!.newVar(name:"dic_dyn",value:["1":"a","2":"B"])
        
        PLD_obj!.dynamicData["v3"] = 8 as AnyObject
        print ("const1 = \(String(describing: const1!))")
    
        PLD_obj?.setValueof("var1", 123 as AnyObject)
      
        print ("var1 = \(String(describing: v1!))")
       
        var dic : Dictionary<String,String> = (PLD_obj!.getValueof(p_var:"dic_dyn") as? Dictionary<String,String>)!
        let t = type(of: dic)
        print("'\(dic)' of type \(t)")
        var mirror  = Mirror(reflecting: dic)
        print(mirror.description)
        print(mirror.description.contains("Int"))
 
        // Do any additional setup after loading the view.
      
    }


}

