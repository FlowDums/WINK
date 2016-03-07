//
//  ImageViewExtend.swift
//  WINK
//
//  Created by Dumas Florian on 07/03/2016.
//  Copyright © 2016 Dumas Florian. All rights reserved.
//

//import Foundation
import UIKit


 class UICarreView : UIView  {

    var ViewControll:ViewController
    
    init(vm:ViewController)
    {
        ViewControll = vm
        super.init(frame: CGRectMake(20,20,20,20))
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        testTouches(touches)
    
    }
    
    func testTouches(touches: Set<UITouch>!) {
        
       let alert = UIAlertController(title: "UIAlertController", message: "Vous avez cliquer", preferredStyle: UIAlertControllerStyle.Alert)
        
            ViewControll.presentViewController(alert, animated: true, completion: nil)
    }
        
}

    
    
