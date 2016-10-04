//
//  ViewController.swift
//  SiriHack
//
//  Created by Xie kesong on 8/30/16.
//  Copyright © 2016 ___HackSirikit___. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        INPreferences.requestSiriAuthorization({
            status in
            switch status{
            case .authorized:
                print("authorized")
            case .denied:
                print("denied")
            case .notDetermined:
                print("not determeined")
            case .restricted:
                print("restricted")
            }
            
        
        })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    

}

