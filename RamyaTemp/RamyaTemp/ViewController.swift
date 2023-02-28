//
//  ViewController.swift
//  RamyaTemp
//
//  Created by Solleti,Aishwarya on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fNameOutlet: UITextField!
    
    @IBOutlet weak var lnameOutlet: UITextField!
    
    @IBOutlet weak var ageOutlet: UITextField!

    
    @IBOutlet weak var ageResultOutlet: UILabel!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonOutlet(_ sender: UIButton) {
        
        var fName = fNameOutlet.text!
        var lname = lnameOutlet.text!
        var age = ageOutlet.text!
       // var f = ageResultOutlet.text!
        var fullName = "\(fName) \(lname)"
        resultOutlet.text = "FullName : \(fullName)"
        
        let getYear = Calendar.current.component(.year, from: Date())
              var ag = Int(ageOutlet.text!)
              var h = String(getYear-ag!)
              ageResultOutlet.text = "Age : \(h)"
        
        imageOutlet.image = UIImage(named: "blk")
        
        
    }
    
}

