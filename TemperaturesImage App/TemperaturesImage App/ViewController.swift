//
//  ViewController.swift
//  TemperaturesImage App
//
//  Created by Palavelli,Bala Harinadh on 2/26/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tempOutlet: UITextField!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitButton(_ sender: Any) {
        var temp=Int(tempOutlet.text!)
        if(temp! < 0){
            displayLabel.text = "It's too cold outside"
            imageViewOL.image = UIImage(named: "cold")
        }
        else if(temp! > 30){
            displayLabel.text = "It's Sunny outside"
            imageViewOL.image = UIImage(named: "sunny")
        }
        else{
            displayLabel.text = "It's Moderate Temperature Outside"
            imageViewOL.image = UIImage(named: "moderate")
        }
    
    }
    
}

