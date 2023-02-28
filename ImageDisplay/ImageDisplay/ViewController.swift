//
//  ViewController.swift
//  ImageDisplay
//
//  Created by Devulapally,Ramya on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var labelOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func displayImageOL(_ sender: Any) {
        
        // displaying image
        imageViewOL.image = UIImage(named:"dhoni")
        
        // displaying text label
        labelOL.text="Captain of Indian cricket team"
    }
}

