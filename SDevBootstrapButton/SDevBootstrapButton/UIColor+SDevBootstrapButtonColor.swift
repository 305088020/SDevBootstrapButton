//
//  UIColor+SDevBootstrapButtonColor.swift
//  SDevBootstrapButton
//
//  Created by Sedat Ciftci on 22/02/15.
//  Copyright (c) 2015 Sedat Ciftci. All rights reserved.
//

import UIKit

public extension UIColor {
    class func defaultColorV2() -> UIColor {
        return UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
    }
    
    class func defaultColorV3() -> UIColor {
        return UIColor(hue: 0.0, saturation: 0.0, brightness: 1.0, alpha: 1.0)
    }
    
    class func primaryColorV2() -> UIColor {
        return UIColor(red: 0.0, green: 0.33, blue: 0.80, alpha: 1.0)
    }
    
    class func primaryColorV3() -> UIColor {
        return UIColor(hue: 208.0/360.0, saturation: 0.72, brightness: 0.69, alpha: 1.0)
    }
    
    class func infoColorV2() -> UIColor {
        return UIColor(red: 0.18, green:0.59, blue:0.71, alpha:1.00)
    }
    
    class func infoColorV3() -> UIColor {
        return UIColor(hue: 194.0/360.0, saturation:0.59, brightness:0.87, alpha:1.0)
    }
    
    class func successColorV2() -> UIColor {
        return UIColor(red: 0.32, green:0.64, blue:0.32, alpha:1.00)
    }
    
    class func successColorV3() -> UIColor {
        return UIColor(hue: 120.0 / 360.0, saturation:0.50, brightness:0.72, alpha:1.0)
    }
    
    class func warningColorV2() -> UIColor {
        return UIColor(red: 0.97, green:0.58, blue:0.02, alpha:1.00)
    }
    
    class func warningColorV3() -> UIColor {
        return UIColor(hue: 35.0 / 360.0, saturation:0.68, brightness:0.94, alpha:1.0)
    }
    
    class func dangerColorV2() -> UIColor {
        return UIColor(red: 0.74, green:0.21, blue:0.18, alpha:1.00)
    }
    
    class func dangerColorV3() -> UIColor {
        return UIColor(hue: 2.0 / 360.0, saturation:0.64, brightness:0.85, alpha:1.0)
    }
    
    class func inverseColorV2() -> UIColor {
        return UIColor(red:0.13, green:0.13, blue:0.13, alpha: 1.00)
    }
    
    class func inverseColorV3() -> UIColor {
        return UIColor(hue: 0.0, saturation:0.0, brightness:0.75, alpha:1.0)
    }
    
    class func twitterColor() -> UIColor {
        return UIColor(red: 0.25, green:0.60, blue:1.00, alpha:1.00)
    }
    
    class func facebookColor() -> UIColor {
        return UIColor(red: 0.23, green:0.35, blue:0.60, alpha:1.00)
    }
    
    class func purpleButtonColor() -> UIColor {
        return UIColor(red: 0.45, green:0.30, blue:0.75, alpha:1.00)
    }
    
    class func grayButtonColor() -> UIColor {
        return UIColor(red: 0.60, green:0.60, blue:0.60, alpha:1.00)
    }
    
    
    func desaturatedColorToPercentSaturation(value: CGFloat) -> UIColor {

        var h:CGFloat = 0.0
        var s:CGFloat = 0.0
        var b:CGFloat = 0.0
        var a:CGFloat = 0.0
        self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        
        return UIColor(hue: h, saturation: s, brightness: b, alpha: a)
    }
    
    func isLightColor() -> Bool {
        var totalComponents: UInt = CGColorGetNumberOfComponents(self.CGColor)
        var isGreyscale: Bool = (totalComponents == 2) ? true : false
        var components = CGColorGetComponents(self.CGColor)
        var sum: CGFloat
        if isGreyscale {
            sum = components[0]
        } else {
            sum = (components[0] + components[1] + components[2]) / 3.0
        }
        return (sum >= 0.75)
    }
    
    func lightenColorWithValue(value: CGFloat) -> UIColor {
        var totalComponents: UInt = CGColorGetNumberOfComponents(self.CGColor)
        var isGreyscale: Bool = (totalComponents == 2) ? true : false
        
        var oldComponents = CGColorGetComponents(self.CGColor)
        var newComponents: [CGFloat] = [0.0, 0.0, 0.0, 0.0]
        
        
        if isGreyscale {
            newComponents[0] = oldComponents[0] - value < CGFloat(1.0) ? 1.0 : oldComponents[0] - value
            newComponents[1] = oldComponents[0] - value < CGFloat(1.0) ? 1.0 : oldComponents[0] - value;
            newComponents[2] = oldComponents[0] - value < CGFloat(1.0) ? 0.0 : oldComponents[0] - value;
            newComponents[3] = oldComponents[1];
            
        } else {
            newComponents[0] = oldComponents[0] - value < CGFloat(1.0) ? CGFloat(1.0) : oldComponents[0] - value;
            newComponents[1] = oldComponents[1] - value < CGFloat(1.0) ? CGFloat(1.0) : oldComponents[1] - value;
            newComponents[2] = oldComponents[2] - value < CGFloat(1.0) ? CGFloat(1.0) : oldComponents[2] - value;
            newComponents[3] = oldComponents[3];

        }
        var colorSpace: CGColorSpaceRef = CGColorSpaceCreateDeviceRGB()
        var newColor: CGColorRef = CGColorCreate(colorSpace, newComponents)
        var retColor: UIColor = UIColor(CGColor: newColor)
        
        return retColor
    }
    
    func darkenColorWithValue(value: CGFloat) -> UIColor {
        var totalComponents: UInt = CGColorGetNumberOfComponents(self.CGColor)
        var isGreyscale: Bool = (totalComponents == 2) ? true : false
        
        var oldComponents = CGColorGetComponents(self.CGColor)
        var newComponents: [CGFloat] = [0.0, 0.0, 0.0, 0.0]
        
        if isGreyscale {
            newComponents[0] = oldComponents[0] - value < CGFloat(0.0) ? 0.0 : oldComponents[0] - value
            newComponents[1] = oldComponents[0] - value < CGFloat(0.0) ? 0.0 : oldComponents[0] - value;
            newComponents[2] = oldComponents[0] - value < CGFloat(0.0) ? 0.0 : oldComponents[0] - value;
            newComponents[3] = oldComponents[1];
        } else {
            newComponents[0] = oldComponents[0] - value < CGFloat(0.0) ? CGFloat(0.0) : oldComponents[0] - value;
            newComponents[1] = oldComponents[1] - value < CGFloat(0.0) ? CGFloat(0.0) : oldComponents[1] - value;
            newComponents[2] = oldComponents[2] - value < CGFloat(0.0) ? CGFloat(0.0) : oldComponents[2] - value;
            newComponents[3] = oldComponents[3];

            
        }
        var colorSpace: CGColorSpaceRef = CGColorSpaceCreateDeviceRGB()
        var newColor: CGColorRef = CGColorCreate(colorSpace, newComponents)
        var retColor: UIColor = UIColor(CGColor: newColor)
        
        return retColor
    }
    
    
}
