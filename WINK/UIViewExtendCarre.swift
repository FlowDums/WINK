//
//  ImageViewExtend.swift
//  WINK
//
//  Created by Dumas Florian on 07/03/2016.
//  Copyright © 2016 Dumas Florian. All rights reserved.
//

//import Foundation
import UIKit
public extension UIDevice {
    
    var modelName: String {
        #if (arch(i386) || arch(x86_64)) && os(iOS)
            let DEVICE_IS_SIMULATOR = true
            #else
            let DEVICE_IS_SIMULATOR = false
        #endif
        
        var machineString : String = ""
        
        if DEVICE_IS_SIMULATOR == true
        {
            
            if let dir = NSProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] {
                machineString = dir
            }
        }
        else {
            var systemInfo = utsname()
            uname(&systemInfo)
            let machineMirror = Mirror(reflecting: systemInfo.machine)
            machineString = machineMirror.children.reduce("") { identifier, element in
                guard let value = element.value as? Int8 where value != 0 else { return identifier }
                return identifier + String(UnicodeScalar(UInt8(value)))
            }
        }
        switch machineString {

        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
        default:                                        return machineString
        }
    }
}

class UICustomImage : UIImageView
{
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
            if let touch = touches.first
            {
                let position :CGPoint = touch.locationInView(self)
                //print(position.x)
                //print(position.y)
                
                
                // NE PAS EFFACER (c'est dans la consigne)
                //To avoid players cheating by clicking everywhere, once a click is made in a place where Cage isn’t, the player has to wait 2 seconds before submitting another answer.
                sleep(2)
            }
        }
}





 class UICarreView : UIView  {

    var ViewControll:ViewController
    
    init(vm:ViewController, rectAre:CGRect)
    {
        ViewControll = vm
        super.init(frame: rectAre)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        testTouches(touches)
    }
    
    func testTouches(touches: Set<UITouch>!)
    {
       self.ViewControll.saveScores()
    }
    
    
    
       

    

}



