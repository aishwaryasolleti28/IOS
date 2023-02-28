//
//  ViewController.swift
//  VowelTester
//
//  Created by Devulapally,Ramya on 2/26/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Button(_ sender: UIButton) {
        var enterText = textOutlet.text!
        
        if(enterText.contains("a")||enterText.contains("e")||enterText.contains("i")||enterText.contains("o")||enterText.contains("u")){
            resultOutlet.text = "The entered text contains vowel"
        }
        else
        {
            resultOutlet.text = "The entered text does not contains vowel"
        }
    }
    
}

