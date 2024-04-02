//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Cihan on 22.01.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageViewDemo: UIImageView!
    @IBOutlet weak var labelDemo: UILabel!
    
    var demo = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewDemo.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        
        imageViewDemo.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeImage() {

        
        if demo == false{
            imageViewDemo.image = UIImage(named: "demo2")
            labelDemo.text  = "Demo 2"
            demo = true
        } else {
            imageViewDemo.image = UIImage(named: "demo1")
            labelDemo.text  = "Demo 1"
            demo = false
        }
       
    }
}

