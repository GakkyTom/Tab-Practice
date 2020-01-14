//
//  ViewController.swift
//  tab_practice_line
//
//  Created by eversense on 2020/01/14.
//  Copyright © 2020 eversense. All rights reserved.
//

import UIKit
import TabPageViewController

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func buttonPush(_ sender: Any) {
        let tc = InfiniteTabPageViewController()
        navigationController?.pushViewController(tc, animated: true)
    }
}

