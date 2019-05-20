//
//  CommonConstants.swift
//  TaskManager-Swift
//
//  Created by Jeong Jin Eun on 24/12/2018.
//  Copyright © 2018 Jeong Jin Eun. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    static let appTitle: String = "timerset-ios"
    
    // base screen display weight
    static let weight: CGFloat = {
        switch UIDevice.current.userInterfaceIdiom {
        case .phone:
            return UIScreen.main.bounds.width / 375.0
        case .pad:
            return UIScreen.main.bounds.width / 768.0
        default:
            // default isn't have mean yet.
            return UIScreen.main.bounds.width / 32.0
        }
    }()
    
    // second time
    struct Time {
        static let hour: Int = 3600
        static let minute: Int = 60
    }
    
    // project font define
    struct Font {
        static let Light: UIFont! = UIFont.init(name: "NanumSquareL", size: 17.0)
        static let Regular: UIFont! = UIFont.init(name: "NanumSquareR", size: 17.0)
        static let Bold: UIFont! = UIFont.init(name: "NanumSquareB", size: 17.0)
        static let ExtraBold: UIFont! = UIFont.init(name: "NanumSquareEB", size: 17.0)
    }
    
    struct Color {
        static let appColor: UIColor = #colorLiteral(red: 0.5333333333, green: 0.8666666667, blue: 0.5333333333, alpha: 1)
        
        static let clear: UIColor = .clear
        static let white: UIColor = .white
        static let black: UIColor = .black
        static let gray: UIColor = .gray
        static let lightGray: UIColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
}
