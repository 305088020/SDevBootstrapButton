//
//  ViewController.swift
//  SDevBootstrapButtonExample
//
//  Created by Sedat Ciftci on 18/07/15.
//  Copyright © 2015 Sedat Ciftci. All rights reserved.
//

import UIKit
import SDevBootstrapButton

class ViewController: UIViewController {

    var twitterButton: SDevBootstrapButton!
    var facebookButton: SDevBootstrapButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        twitterButton = SDevBootstrapButton(frame: CGRectMake(100, 100, 200, 50), type: Type.Twitter, style: Style.V3)
        twitterButton.setTitle("Follow Me !", forState: UIControlState.Normal)
        twitterButton.addAwesomeIcon("twitter", beforeTitle: false)
        self.view.addSubview(twitterButton)
        
        
        facebookButton = SDevBootstrapButton(frame: CGRectMake(100, 160, 200, 50), type: Type.Facebook, style: Style.V3)
        facebookButton.setTitle("Login with Facebook", forState: UIControlState.Normal)
        facebookButton.addAwesomeIcon("facebook", beforeTitle: false)
        self.view.addSubview(facebookButton)
        
        let warningButton: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 220, 200, 50), type: Type.Warning, style: Style.V3)
        warningButton.setTitle("Warning", forState: UIControlState.Normal)
        warningButton.addAwesomeIcon("warning", beforeTitle: true)
        self.view.addSubview(warningButton)
        
        let dangerButton: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 280, 50, 50), type: Type.Danger, style: Style.V3)
        dangerButton.addIonIconWithFontSize("ios-bell", beforeTitle: false, fontSize: 25.0)
        self.view.addSubview(dangerButton)
        
        
        let locationButton: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(180, 280, 50, 50), type: Type.Info, style: Style.V3)
        locationButton.addOcticonWithFontSize("location", beforeTitle: false, fontSize: 25.0)
        self.view.addSubview(locationButton)
        
        
        let plusButton: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(250, 280, 50, 50), type: Type.Default, style: Style.V3)
        plusButton.addOcticonWithFontSize("eye", beforeTitle: false, fontSize: 25.0)
        self.view.addSubview(plusButton)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

