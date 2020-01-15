//
//  InfiniteTabPageViewController.swift
//  tab_practice_line
//
//  Created by eversense on 2020/01/14.
//  Copyright © 2020 eversense. All rights reserved.
//

import UIKit
import TabPageViewController

class InfiniteTabPageViewController: TabPageViewController {
    
    override init() {
        super.init()
        let vc1 = UIViewController()
        vc1.view.backgroundColor = UIColor(red: 251/255, green: 252/255, blue: 149/255, alpha: 1.0)
        let vc2 = UIViewController()
        vc2.view.backgroundColor = UIColor(red: 252/255, green: 150/255, blue: 149/255, alpha: 1.0)
        let vc3 = UIViewController()
        vc3.view.backgroundColor = UIColor(red: 149/255, green: 218/255, blue: 252/255, alpha: 1.0)
        let vc4 = UIViewController()
        vc4.view.backgroundColor = UIColor(red: 149/255, green: 252/255, blue: 197/255, alpha: 1.0)
        let vc5 = UIViewController()
        vc5.view.backgroundColor = UIColor(red: 252/255, green: 182/255, blue: 106/255, alpha: 1.0)
        let vc6 = UIViewController()
        vc6.view.backgroundColor = UIColor(red: 149/255, green: 182/255, blue: 106/255, alpha: 1.0)
        let vc7 = UIStoryboard(name: "AddPage", bundle: nil).instantiateViewController(withIdentifier: "AddPage")
        
        tabItems = [(vc1, "あるある"), (vc2, "やっちまった！"), (vc3, "つわり"), (vc4, "育児あるある"), (vc5, "離乳食"), (vc6, "妊娠"), (vc7, "+もっと")]
        isInfinity = false
        
        option.tabMargin = 10.0
        option.currentColor = .white

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
