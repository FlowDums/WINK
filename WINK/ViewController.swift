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
    private var pseudo: String = ""
    
    var obstacleViews : [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.maximumZoomScale = 6.0;
        scrollView.minimumZoomScale = 1.0;
        
        // Create an obstacle view and add it to the scroll view for testing purposes
        let obstacleView = UICarreView(vm:self)
        
        
        //obstacleView.backgroundColor = UIColor.clearColor()
        
        obstacleView.backgroundColor = UIColor.redColor();
        imageView.addSubview(obstacleView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    
    func saveScores()
    {
        
        let alert = UIAlertController(title: "Score", message: "Entrer votre pseudo :", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addTextFieldWithConfigurationHandler({(textField: UITextField!) in
            textField.placeholder = nil
            self.pseudo = textField.text!})
        
        alert.addAction(UIAlertAction(title: "Enregistrer", style: UIAlertActionStyle.Default, handler: {action in self.showScores(self.pseudo)}))
        
        self.presentViewController(alert, animated: true, completion: nil)
    
    }
    
    func showScores(player: String)
    {

        
    }
    
    
    
    
    

}

