//
//  ViewController.swift
//  testLib
//
//  Created by laurent aubourg on 05/04/2021.
//

import UIKit
import plistData

class ViewController: UIViewController{
    var  PLD_obj : PLD_class?

   
    override func viewDidLoad() {
        super.viewDidLoad()
        PLD_obj = PLD_class(fileName:"game")
        var v1 = PLD_obj!.getValueof(p_var: "var1") as? Int
        let const1 = PLD_obj!.getValueof(p_let:  "const1") as? Int
        print ("const1 = \(String(describing: const1!))")
        print ("var1 = \(String(describing: v1!))")
        v1? += 15
        print ("var1 = \(String(describing: v1!))")
        // Do any additional setup after loading the view.
    }


}

