//
//  ViewController.swift
//  SignInExample
//
//  Created by Joseph Antonakakis on 3/18/17.
//  Copyright © 2017 Joseph Antonakakis. All rights reserved.
//

import UIKit
import FacebookCore
import FacebookLogin

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = LoginButton(readPermissions: [ .publicProfile, .email ])
        loginButton.center = view.center
        view.addSubview(loginButton)
        
        if let accessToken = AccessToken.current {
            print("We are logged in! Our access token is \(accessToken)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

