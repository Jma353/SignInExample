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
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Facebook Sign In */
        let fbLoginButton = LoginButton(readPermissions: [ .publicProfile, .email ])
        fbLoginButton.center = view.center
        view.addSubview(fbLoginButton)
        if let accessToken = AccessToken.current {
            print("We are logged in! Our access token is \(accessToken)")
        }
        
        /* Google Sign In */
        GIDSignIn.sharedInstance().uiDelegate = self
        let googleLoginButton = GIDSignInButton.init()
        googleLoginButton.center = CGPoint(x: view.center.x, y: view.center.y + 200)
        view.addSubview(googleLoginButton)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

