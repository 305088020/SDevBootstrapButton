//
//  ViewController.swift
//  SDevBootstrapButtonDemo
//
//  Created by Sedat Ciftci on 22/02/15.
//  Copyright (c) 2015 Sedat Ciftci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var stButton: SDevBootstrapButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var button: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 50, 200, 50), type: Type.Twitter, style: Style.V3)
        button.setTitle("Follow Me !", forState: UIControlState.Normal)
        button.addAwesomeIcon("twitter", beforeTitle: true)
        self.view.addSubview(button)
        
        
        
        var button2: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 110, 200, 50), type: Type.Facebook, style: Style.V3)
        button2.setTitle("Facebook", forState: UIControlState.Normal)
        button2.addAwesomeIcon("facebook", beforeTitle: false)
        self.view.addSubview(button2)
        
        
        var button3: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 170, 200, 50), type: Type.Warning, style: Style.V3)
        button3.setTitle("Warning Button", forState: UIControlState.Normal)
        self.view.addSubview(button3)
        
        
        var button4: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 230, 200, 50), type: Type.Danger, style: Style.V3)
        button4.setTitle("Danger Button", forState: UIControlState.Normal)
        self.view.addSubview(button4)
        
        
        var button5: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 290, 200, 50), type: Type.Success, style: Style.V3)
        button5.setTitle("Success Button", forState: UIControlState.Normal)
        button5.addAwesomeIcon("paw", beforeTitle: true)
        self.view.addSubview(button5)
        
        stButton?.setStyle(Style.V3)
        stButton?.setType(Type.Primary)
        stButton?.addAwesomeIcon("taxi", beforeTitle: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

