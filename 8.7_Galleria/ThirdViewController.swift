//
//  ThirdViewController.swift
//  8.7_Galleria
//
//  Created by Alexandre Samson on 14.04.21.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var segmentControll = UISegmentedControl()
    var menuArray = ["первый сегмент", "второй сегмент", "третий сегмент"]
    
    var viewOne = UIView()
    
    
    
    var viewTwo = UIView()
    var viewThree = UIView()
    
    
    var colorArray = [UIColor.green, UIColor.blue, UIColor.purple]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewWidth = self.view.frame.width
        let viewHeight = self.view.frame.height
        
        self.viewOne.frame = CGRect(x: 0, y: 0, width: viewWidth, height: viewHeight)
        self.viewOne.backgroundColor = self.colorArray[0]
        self.view.addSubview(self.viewOne)
        
        self.segmentControll = UISegmentedControl(items: self.menuArray)
        self.segmentControll.frame = CGRect(x: 40, y: 700, width: 350, height: 40)
        self.segmentControll.backgroundColor = .gray
        self.view.addSubview(self.segmentControll)
        
        self.segmentControll.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
        
    }
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == self.segmentControll {
            let segmentIndex = target.selectedSegmentIndex
            
            self.viewOne.backgroundColor = self.colorArray[segmentIndex]
        }
    }

}
