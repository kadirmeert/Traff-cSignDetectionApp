//
//  SplashViewController.swift
//  TraffıcSignDetectionApp
//
//  Created by Kadır  Yıldız on 6.05.2022.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
   
        self.performSegue(withIdentifier: "sendLottie", sender: self)
    }
    
    
}
