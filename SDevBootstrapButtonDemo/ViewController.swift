//
//  ViewController.swift
//  SDevBootstrapButtonDemo
//
//  Created by Sedat Ciftci on 22/02/15.
//  Copyright (c) 2015 Sedat Ciftci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var button: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 50, 200, 50), type: Type.Twitter, style: Style.V3)
        button.setTitle("Follow Me !", forState: UIControlState.Normal)
        button.addAwesomeIcon("twitter", beforeTitle: true)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

