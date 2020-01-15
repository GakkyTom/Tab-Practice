//
//  TabPageOption.swift
//  TabPageViewController
//
//  Created by EndouMari on 2016/02/24.
//  Copyright © 2016年 EndouMari. All rights reserved.
//

import UIKit

public enum HidesTopContentsOnSwipeType {
    case none
    case tabBar
    case navigationBar
    case all
}

public struct TabPageOption {
    
    public init() {}
    
    public var fontSize = UIFont.systemFontSize
    public var currentColor = UIColor(red: 105/255, green: 182/255, blue: 245/255, alpha: 1.0)
    public var defaultColor = UIColor(red: 153/255, green: 153/255, blue: 153/255, alpha: 1.0)
    public var tabHeight: CGFloat = 32.0
    public var tabMargin: CGFloat = 20.0
    public var tabWidth: CGFloat?
    public var currentBarHeight: CGFloat = 2.0
    public var tabBackgroundColor: UIColor = .cyan
    // タブの色を個別設定できるよう拡張
    public var tabBackgroundColors: [UIColor] = []
    public var pageBackgoundColor: UIColor = UIColor.white
    public var isTranslucent: Bool = true
    public var hidesTopViewOnSwipeType: HidesTopContentsOnSwipeType = .none
    
    internal var tabBarAlpha: CGFloat {
        return isTranslucent ? 0.95 : 1.0
    }
    internal var tabBackgroundImage: UIImage {
        return convertImage()
    }
    
    
    public var setupTabBackgroundColors: [UIColor]
        = [
                UIColor(red: 252/255, green: 150/255, blue: 149/255, alpha: 1.0),
                UIColor(red: 149/255, green: 218/255, blue: 252/255, alpha: 1.0),
                UIColor(red: 149/255, green: 252/255, blue: 197/255, alpha: 1.0),
                UIColor(red: 252/255, green: 182/255, blue: 106/255, alpha: 1.0),
                UIColor(red: 149/255, green: 182/255, blue: 106/255, alpha: 1.0),
                UIColor(red: 252/255, green: 150/255, blue: 149/255, alpha: 1.0),
                UIColor(red: 149/255, green: 218/255, blue: 252/255, alpha: 1.0),
            ]
    
    fileprivate func convertImage() -> UIImage {
        let rect : CGRect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context : CGContext? = UIGraphicsGetCurrentContext()
        let backgroundColor = tabBackgroundColor.withAlphaComponent(tabBarAlpha).cgColor
        context?.setFillColor(backgroundColor)
        context?.fill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
