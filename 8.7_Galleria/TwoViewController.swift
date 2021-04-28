//
//  TwoViewController.swift
//  8.7_Galleria
//
//  Created by Alexandre Samson on 14.04.21.
//


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
