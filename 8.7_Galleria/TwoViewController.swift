//
//  TwoViewController.swift
//  8.7_Galleria
//
//  Created by Alexandre Samson on 14.04.21.
//
/*
let imageView1 = UIImageView(frame: CGRect(x: 20, y: 60, width: 175,height: 250))
let label1 = UILabel(frame: CGRect(x: 20, y: 330, width: 175, height: 50))

let imageView2 = UIImageView(frame: CGRect(x: 230, y: 60, width: 175,height: 250))
let label2 = UILabel(frame: CGRect(x: 230, y: 330, width: 175, height: 50))

let imageView3 = UIImageView(frame: CGRect(x: 20, y: 400, width: 175,height: 250))
let label3 = UILabel(frame: CGRect(x: 20, y: 670, width: 175, height: 50))

let imageView4 = UIImageView(frame: CGRect(x: 230, y: 400, width: 175,height: 250))
let label4 = UILabel(frame: CGRect(x: 230, y: 670, width: 175, height: 50))
*/

import UIKit

class TwoViewController: UIViewController {
    
    
    let picturesArray = ["bird.jpg", "bridge.jpg", "cheese-platter.jpg", "city.jpg"]
    
    
        
    @IBOutlet weak var twoViewController: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentIndex = picturesArray.count
        
        var picturesX: CGFloat = 0
        var picturesY: CGFloat = 40
        let picturesWidth = self.view.frame.width / 2
        let picturesHeight = self.view.frame.height / 3
        
        var labelX: CGFloat = 0
        var labelY: CGFloat = 140
        let labelWidth = self.view.frame.width / 2
        let labelHeight = picturesHeight
        
        for i in 0..<currentIndex {
            
            let imageView = UIImageView(frame: CGRect(x: picturesX, y: picturesY, width: picturesWidth, height: picturesHeight))
            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage(named: picturesArray[i])
            self.view.addSubview(imageView)
                     
            if i == 0 || i % 2 == 0 {
                picturesX += picturesWidth
            } else {
                picturesX = 0
                picturesY = picturesHeight
            }
            
            let labelView = UILabel(frame: CGRect(x: labelX, y: labelY, width: labelWidth, height: labelHeight))
            labelView.contentMode = .scaleAspectFit
            labelView.text = "Label"
            labelView.textAlignment = .center
            self.view.addSubview(labelView)
            
            if i == 0 || i % 2 == 0 {
                labelX += labelWidth
            } else {
                labelX = 0
                labelY = picturesHeight + 100
            }

        }
    }
}
