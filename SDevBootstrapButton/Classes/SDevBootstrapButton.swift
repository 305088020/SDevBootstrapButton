//
//  SDevBootstrapButton.swift
//  SDevBootstrapButton
//
//  Created by Sedat Ciftci on 22/02/15.
//  Copyright (c) 2015 Sedat Ciftci. All rights reserved.
//

import UIKit
import CoreGraphics


enum Style {
    case V2, V3
}

enum Type {
    case
        Default,
        Primary,
        Info,
        Success,
        Warning,
        Danger,
        Inverse,
        Twitter,
        Facebook,
        Purple,
        Gray
}

class SDevBootstrapButton: UIButton, UIAppearanceContainer {
    
    override var highlighted: Bool {
        didSet {
            if highlighted {
                self.selected = true
            } else {
                self.selected = false
            }
        }
    }

    var color: UIColor!
    var shouldShowDisabled: Bool
    var buttonStyle: Style
    var buttonIcon: NSString!
    var bType: Type
    var fSize: CGFloat!
    var buttonCornerRadius: NSNumber!

    func setTextAttributesForStyle(style: Style){
        switch style {
        case .V2:
            self.titleLabel?.shadowOffset = CGSizeMake(0.0, -1.0)
            self.titleLabel?.font = UIFont.boldSystemFontOfSize(17.0)
            break
        
        case .V3:
            self.titleLabel?.shadowOffset = CGSizeMake(0.0, 0.0)
            self.titleLabel?.font = UIFont.systemFontOfSize(17.0)
            break
        default:
            break
            
        }
    }
    
    
    init(frame: CGRect, type: Type, style: Style, icon: String, fontSize: CGFloat) {
        self.bType = type
        self.shouldShowDisabled = true
        self.buttonStyle = style
        self.buttonIcon = icon
        self.fSize = fontSize
        super.init(frame: frame)
        setType(type)
        setTextAttributesForStyle(style)
        self.titleLabel?.font = UIFont.fontAwesomeOfSize(fontSize)
        self.titleLabel?.textAlignment = NSTextAlignment.Center
        self.setTitle(String.fontAwesomeIconWithName(icon), forState: UIControlState.Normal)
    }
    

    init(frame: CGRect, type: Type, style: Style) {
        self.bType = type
        self.shouldShowDisabled = true
        self.buttonStyle = style
        super.init(frame: frame)
        setType(type)
        setTextAttributesForStyle(style)
    }
    
    required init(coder aDecoder: NSCoder) {
        self.shouldShowDisabled = true
        self.buttonStyle = Style.V3
        self.bType = Type.Primary
        super.init(coder: aDecoder)
    }
    
    func getButtonCornerRadius() -> NSNumber {
        if(buttonCornerRadius != nil){
            return buttonCornerRadius;
        }
        return SDevBootstrapButton.cornerRadiusForStyle(buttonStyle)
    }
    
    
    func addAwesomeIcon(icon: String, beforeTitle: Bool) {
        var iconString: NSString = String.fontAwesomeIconWithName(icon)
        self.titleLabel?.font = UIFont.fontAwesomeOfSize(self.titleLabel!.font.pointSize)
        var title: NSString = NSString(format: "%@", iconString)
        if (self.titleLabel?.text != nil){
            if(beforeTitle) {
                title = title.stringByAppendingFormat(" %@", self.titleLabel!.text!)
            } else {
                title = NSString(format: "%@ %@", self.titleLabel!.text!, iconString)
            }
        }
        self.setTitle(title, forState: UIControlState.Normal)
    }
    
    func addIonIcon(icon: String, beforeTitle: Bool) {
        var iconString: NSString = String.fontIonIconWithName(icon)
        self.titleLabel?.font = UIFont.fontIonOfSize(self.titleLabel!.font.pointSize)
        var title: NSString = NSString(format: "%@", iconString)
        if (self.titleLabel?.text != nil){
            if(beforeTitle) {
                title = title.stringByAppendingFormat(" %@", self.titleLabel!.text!)
            } else {
                title = NSString(format: "%@ %@", self.titleLabel!.text!, iconString)
            }
        }
        self.setTitle(title, forState: UIControlState.Normal)
    }
    
    
    func addIconicIcon(icon: String, beforeTitle: Bool) {
        var iconString: NSString = String.fontIconicIconWithName(icon)
        self.titleLabel?.font = UIFont.fontIconicOfSize(self.titleLabel!.font.pointSize)
        var title: NSString = NSString(format: "%@", iconString)
        if (self.titleLabel?.text != nil){
            if(beforeTitle) {
                title = title.stringByAppendingFormat(" %@", self.titleLabel!.text!)
            } else {
                title = NSString(format: "%@ %@", self.titleLabel!.text!, iconString)
            }
        }
        self.setTitle(title, forState: UIControlState.Normal)
    }
    
    
    func addOcticon(icon: String, beforeTitle: Bool) {
        var iconString: NSString = String.fontOcticonWithName(icon)
        self.titleLabel?.font = UIFont.fontOcticonOfSize(self.titleLabel!.font.pointSize)
        var title: NSString = NSString(format: "%@", iconString)
        if (self.titleLabel?.text != nil){
            if(beforeTitle) {
                title = title.stringByAppendingFormat(" %@", self.titleLabel!.text!)
            } else {
                title = NSString(format: "%@ %@", self.titleLabel!.text!, iconString)
            }
        }
        self.setTitle(title, forState: UIControlState.Normal)
    }
    
    func setColor(newColor: UIColor) {
        self.color = newColor
        if newColor.isLightColor() {
            self.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
            self.setTitleShadowColor(UIColor.whiteColor().colorWithAlphaComponent(0.6), forState: UIControlState.Normal)
            if shouldShowDisabled {
                self.setTitleColor(UIColor(white: 0.4, alpha: 0.5), forState: UIControlState.Disabled)
            }
        } else {
            self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            self.setTitleShadowColor(UIColor.blackColor().colorWithAlphaComponent(0.6), forState: UIControlState.Normal)
            if shouldShowDisabled {
                self.setTitleColor(UIColor(white: 1.0, alpha: 0.5), forState: UIControlState.Disabled)
            }
        }
        
        self.setNeedsDisplay()
    }
    
    
    func setShouldShowDisabled(show: Bool) {
        self.shouldShowDisabled = show
        if show {
            if(self.color .isLightColor()) {
                self.setTitleColor(UIColor(white: 0.4, alpha: 0.5), forState: UIControlState.Disabled)
            } else {
                self.setTitleColor(UIColor(white: 1.0, alpha: 0.5), forState: UIControlState.Disabled)
            }
        } else {
            if(self.color .isLightColor()) {
                self.setTitleColor(UIColor.blackColor(), forState: UIControlState.Disabled)
            } else {
                self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Disabled)
            }
        }
    }
    
    func setStyle(style: Style){
        buttonStyle = style
    }
    
    func setType(type: Type) {
        setColor(SDevBootstrapButton.colorForButtonType(type, style: buttonStyle))
    }
    
    
    class func colorForButtonType(type: Type, style: Style) -> UIColor {
        var returnColor: UIColor
        switch(style) {
        case .V2:
            returnColor = SDevBootstrapButton.colorForV2StyleButtonWithType(type)
            break
        case .V3:
            returnColor = SDevBootstrapButton.colorForV3StyleButtonWithType(type)
            break
            
        default:
            returnColor = SDevBootstrapButton.colorForV2StyleButtonWithType(type)
            break
        }
        
        return returnColor
    }
    
    class func colorForV2StyleButtonWithType(type: Type) -> UIColor {
        var color: UIColor = UIColor.defaultColorV2()
        switch(type){
        case .Primary:
            color = UIColor.primaryColorV2()
            break
        case .Info:
            color = UIColor.infoColorV2()
            break
        case .Success:
            color = UIColor.successColorV2()
            break
        case .Warning:
            color = UIColor.warningColorV2()
            break
        case .Danger:
            color = UIColor.dangerColorV2()
            break
        case .Inverse:
            color = UIColor.inverseColorV2()
            break
        case .Twitter:
            color = UIColor.twitterColor()
            break
        case .Facebook:
            color = UIColor.facebookColor()
            break
        case .Purple:
            color = UIColor.purpleBButtonColor()
            break
        case .Gray:
            color = UIColor.grayBButtonColor()
            break
        case .Default:
            color = UIColor.defaultColorV2()
            break
        default:
            break
        }
        return color
    }
    
    
    class func colorForV3StyleButtonWithType(type: Type) -> UIColor {
        var color: UIColor = UIColor.defaultColorV3()
        switch(type){
        case .Primary:
            color = UIColor.primaryColorV3()
            break
        case .Info:
            color = UIColor.infoColorV3()
            break
        case .Success:
            color = UIColor.successColorV3()
            break
        case .Warning:
            color = UIColor.warningColorV3()
            break
        case .Danger:
            color = UIColor.dangerColorV3()
            break
        case .Inverse:
            color = UIColor.inverseColorV3()
            break
        case .Twitter:
            color = UIColor.twitterColor()
            break
        case .Facebook:
            color = UIColor.facebookColor()
            break
        case .Purple:
            color = UIColor.purpleBButtonColor()
            break
        case .Gray:
            color = UIColor.grayBButtonColor()
            break
        case .Default:
            color = UIColor.defaultColorV3()
            break
        default:
            break
        }
        return color
    }
    
    class func cornerRadiusForStyle(aStyle: Style) -> NSNumber {
        var r: Float = 0.0
        switch(aStyle) {
        case Style.V2:
            r = 6.0
            break
        case Style.V3:
            r = 4.0
            break
        default:
            break
        }
        return NSNumber(float: r)
    }
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        var context: CGContextRef = UIGraphicsGetCurrentContext()
        switch(self.buttonStyle) {
        case .V2:
            drawBButtonV2InRect(rect, context: context)
            break
        case .V3:
            drawBButtonV3InRect(rect, context: context)
            break
        default:
            
            break
        }
    }
    
    func drawBButtonV2InRect(rect: CGRect, context: CGContextRef){
        var border: UIColor = self.color.darkenColorWithValue(0.06)
        var shadow: UIColor = self.color.lightenColorWithValue(0.50)
        var shadowOffset: CGSize = CGSizeMake(0.0, 1.0)
        var shadowBlurRadius: CGFloat = 2.0
        var roundedRectanglePath: UIBezierPath = UIBezierPath(roundedRect: CGRectMake(0.5, 0.5, rect.size.width - CGFloat(1.0), rect.size.height - CGFloat(1.0)), cornerRadius: CGFloat(self.getButtonCornerRadius()))
        CGContextSaveGState(context)

        roundedRectanglePath.addClip()
        
        var colorSpace: CGColorSpaceRef = CGColorSpaceCreateDeviceRGB()
        var topColor: UIColor = (self.shouldShowDisabled && self.enabled) ? self.color.darkenColorWithValue(0.12) : self.color.lightenColorWithValue(0.12)
        var newGradientColors:CFArray = [topColor.CGColor, self.color.CGColor]
        var newGradientLocations:[CGFloat] = [0, 1]
        var gradient: CGGradientRef = CGGradientCreateWithColors(colorSpace, newGradientColors, newGradientLocations)

        CGContextDrawLinearGradient(context, gradient, CGPointMake(0.0,  self.highlighted ? rect.size.height - 0.5 : 0.5), CGPointMake(0.0, self.highlighted ? 0.5 : rect.size.height - 0.5), 0)
        CGContextRestoreGState(context)
        if self.highlighted == false {
            var roundedRectangleBorderRect: CGRect = CGRectInset(roundedRectanglePath.bounds, -shadowBlurRadius, -shadowBlurRadius)
            roundedRectangleBorderRect = CGRectOffset(roundedRectangleBorderRect, -shadowOffset.width, -shadowOffset.height)
            roundedRectangleBorderRect = CGRectInset(CGRectUnion(roundedRectangleBorderRect, roundedRectanglePath.bounds), -1.0, -1.0)
            
            var roundedRectangleNegativePath: UIBezierPath = UIBezierPath(rect: roundedRectangleBorderRect)
            roundedRectangleNegativePath.appendPath(roundedRectanglePath)
            roundedRectangleNegativePath.usesEvenOddFillRule = true
            
            CGContextSaveGState(context)
            
            var xOffset: CGFloat = shadowOffset.width + round(roundedRectangleBorderRect.size.width)
            var yOffset: CGFloat = shadowOffset.height
            
            CGContextSetShadowWithColor(context, CGSizeMake(xOffset + copysign(0.1, xOffset), yOffset + copysign(0.1, yOffset)), shadowBlurRadius, shadow.CGColor)
            roundedRectanglePath.addClip()
            var transform: CGAffineTransform = CGAffineTransformMakeTranslation(-round(roundedRectangleBorderRect.size.width), 0.0)
            roundedRectangleNegativePath.applyTransform(transform)
            
            UIColor.grayColor().setFill()
            roundedRectangleNegativePath.fill()
            CGContextRestoreGState(context)
        }
        
        border.setStroke()
        roundedRectanglePath.lineWidth = 1.0
        roundedRectanglePath.stroke()
    }
    
    func drawBButtonV3InRect(rect: CGRect, context: CGContextRef) {
        CGContextSaveGState(context)
        
        var fill: UIColor = self.highlighted ? self.color : self.color.darkenColorWithValue(0.06)
        if !self.enabled {
            fill.desaturatedColorToPercentSaturation(0.60)
        }
        CGContextSetFillColorWithColor(context, fill.CGColor)
        
        var border: UIColor = self.highlighted ? self.color.darkenColorWithValue(0.06) : self.color.darkenColorWithValue(0.12)
        if !self.enabled {
            border.desaturatedColorToPercentSaturation(0.60)
        }
        
        CGContextSetStrokeColorWithColor(context, border.CGColor)
        CGContextSetLineWidth(context, 1.0)
        
        var path: UIBezierPath = UIBezierPath(roundedRect: CGRectMake(0.5, 0.5, rect.size.width - 1.0, rect.size.height - 1.0), cornerRadius: CGFloat(self.getButtonCornerRadius()))
        CGContextAddPath(context, path.CGPath);
        CGContextDrawPath(context, kCGPathFillStroke);
        CGContextRestoreGState(context)
    }
    
}