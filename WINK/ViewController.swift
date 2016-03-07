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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.maximumZoomScale = 6.0;
        scrollView.minimumZoomScale = 1.0;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    

}

