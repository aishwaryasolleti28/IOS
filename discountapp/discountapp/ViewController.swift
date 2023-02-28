//
//  ViewController.swift
//  discountapp
//
//  Created by Solleti,Aishwarya on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var og: UITextField!
    
    @IBOutlet weak var sp: UITextField!
    
    @IBOutlet weak var dsct: UILabel!
    
    
    @IBOutlet weak var result: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: UIButton) {
        let original = og.text!
        let o = Double(original)
        let sales = sp.text!
        let s = Double (sales)
        if(Double(o!)>Double(s!)){
            dsct.text = "your discount"
        var discount = 100*(Double(o!)-Double(s!))/(Double(o!))
            result.text = "\(discount)"
        }
        else
        {
            result.text = "Enter sale price less than list price."
        }
        
    }
}

