//
//  ViewController.swift
//  WINK
//
//  Created by Dumas Florian on 07/03/2016.
//  Copyright © 2016 Dumas Florian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var lblTimer: UILabel!
    @IBOutlet weak var imageView: UICustomImage!
    @IBOutlet weak var scrollView: UIScrollView!

    private var pseudo: String = ""

    var Timer = NSTimer();
    var CounterSec = 0
    var CounterMS = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.maximumZoomScale = 6.0;
        scrollView.minimumZoomScale = 1.0;
        CreateValidArea()
        StartTimer()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func CreateValidArea()
    {
        let rectArea = CheckDevice()
        let validArea = UICarreView(vm:self, rectAre: rectArea)
        
        //  obstacleView.backgroundColor = UIColor.clearColor()
         validArea.backgroundColor = UIColor.redColor()

        imageView.addSubview(validArea)
        
    }
    
    
    func CheckDevice()->CGRect
    {
        let model = UIDevice().modelName
        let rect:CGRect
        
        switch model
        {
        
        case "iPhone 4":        rect = CGRectMake(111,250,10,10)
        case "iPhone 4s":       rect = CGRectMake(111,250,10,10)
        case "iPhone 5":        rect = CGRectMake(111,295,10,10)
        case "iPhone 5c":       rect = CGRectMake(111,295,10,10)
        case "iPhone 5s":       rect = CGRectMake(111,295,10,10)
        case "iPhone 6":        rect = CGRectMake(130,348,10,10)
        case "iPhone 6 Plus":   rect = CGRectMake(145,385,10,10)
        case "iPhone 6s":       rect = CGRectMake(127,346,10,10)
        case "iPhone 6s Plus":  rect = CGRectMake(145,385,10,10)
        case "iPad 2":          rect = CGRectMake(258,543,25,25)
        case "iPad Air":        rect = CGRectMake(265,539,25,25)
        case "iPad Air 2":      rect = CGRectMake(265,539,25,25)
        default :               rect = CGRectMake(1,1,9,9)
            
        }
        return rect
    }
    
    
    
    func StartTimer()
    {
        if(Timer.valid == false)
        {
            Timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("UpdateTimer"), userInfo: nil, repeats: true)
        }
    }
    
    func UpdateTimer()
    {
        if CounterMS == 99{
            CounterMS = 0
            CounterSec++
        }
        else{
            CounterMS++
        }
        
        lblTimer.text = String(format: "%02d:%02d", CounterSec, CounterMS)
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

