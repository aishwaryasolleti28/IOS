//
//  ViewController.swift
//  Devulapally_Assignment02
//
//  Created by Devulapally,Ramya on 2/6/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNameOutlet: UITextField!
    
    @IBOutlet weak var lastNameOutlet: UITextField!
    
    @IBOutlet weak var yearOutlet: UITextField!
    
    @IBOutlet weak var Details: UILabel!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitBTN(_ sender: UIButton) {
        Details.text = "Details"
        var a = firstNameOutlet.text!
        var b = lastNameOutlet.text!
        var c = yearOutlet.text!
        var d = fullNameLabel.text!
        var e = initialsLabel.text!
        var f = ageLabel.text!
        fullNameLabel.text  = "Full Name: \(b) \(a)"
        var g = initialsLabel.text!
        initialsLabel.text = "Initials : \(b.prefix(1)) \(a.prefix(1))"
        let getYear = Calendar.current.component(.year, from: Date())
        var ag = Int(yearOutlet.text!)
        var h = String(getYear-ag!)
        ageLabel.text = "Age : \(h)"
    }
    
    @IBAction func ResetBTN(_ sender: UIButton) {
        Details.text?.removeAll()
        fullNameLabel.text?.removeAll()
        initialsLabel.text?.removeAll()
        ageLabel.text?.removeAll()
    }

}

