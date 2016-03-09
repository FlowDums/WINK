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
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!

    var pseudo: String = "test"

    var Timer = NSTimer();
    var CounterSec = 0
    var CounterMS = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.maximumZoomScale = 6.0;
        scrollView.minimumZoomScale = 1.0;
        
       
        let obstacleView = UICarreView(vm:self)
        
      //  obstacleView.backgroundColor = UIColor.clearColor()
        
        obstacleView.backgroundColor = UIColor.redColor();
        
        imageView.addSubview(obstacleView)
        StartTimer()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
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
    
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
    {
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
        let player = Player(playerName: "test ?", playerScore: lblTimer.text!)
        
        performSegueWithIdentifier("scoresShow", sender: self)
        
    }
    
    
    
    
    

}

