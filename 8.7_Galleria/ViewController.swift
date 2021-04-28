//
//  ViewController.swift
//  8.7_Galleria
//
//  Created by Alexandre Samson on 11.04.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    let picturesArray = ["bird.jpg", "bridge.jpg", "cheese-platter.jpg", "city.jpg", "dessert.jpg", "dog.jpg", "escalator.jpg", "fashion.jpg", "plant.jpg", "trees.jpg"]
    
    var currentIndex = 0

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func forwardButton(_ sender: Any) {
        
        currentIndex += 1
        
        if currentIndex == picturesArray.count - 1 {
            currentIndex = 0
        }
        imageView.image = UIImage(named: picturesArray[currentIndex])
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        
        currentIndex -= 1
        
        if currentIndex == -1 {
            currentIndex = picturesArray.count - 1
        }
        imageView.image = UIImage(named: picturesArray[currentIndex])
        
        
        
    }
    
    


}

