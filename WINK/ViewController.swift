//
//  ViewController.swift
//  WINK
//
//  Created by Dumas Florian on 07/03/2016.
//  Copyright © 2016 Dumas Florian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var obstacleViews : [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.maximumZoomScale = 6.0;
        scrollView.minimumZoomScale = 1.0;
        
        // Create an obstacle view and add it to the scroll view for testing purposes
        let obstacleView = UICarreView(vm:self)
        
        
        //obstacleView.backgroundColor = UIColor.clearColor()
        
        obstacleView.backgroundColor = UIColor.redColor();
        scrollView.addSubview(obstacleView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    
    
    
    
    

}

