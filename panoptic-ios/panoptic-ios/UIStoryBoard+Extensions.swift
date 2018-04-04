//
//  UIStoryBoard+Extensions.swift
//  panoptic-ios
//
//  Created by Clinton Buie on 4/3/18.
//  Copyright © 2018 AmateMint. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    class func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func launchScreenStoryboard() -> UIStoryboard {
        return UIStoryboard(name:"LaunchScreen", bundle: Bundle.main)
    }
    
    class func searchStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Search", bundle: Bundle.main)
    }
    
}

extension UIStoryboard {
    
    
    
    
}
