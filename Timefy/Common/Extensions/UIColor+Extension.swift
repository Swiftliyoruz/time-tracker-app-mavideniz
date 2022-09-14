//
//  UIColor+Extension.swift
//  Timefy
//
//  Created by Doğancan Mavideniz on 15.09.2022.
//

import UIKit
extension UIColor {
    class var appWhite: UIColor {
        return self.hexColor(0xFAFAFF, alpha: 1.0)
    }
    class var appPurple: UIColor {
        return self.hexColor(0x9B51E0, alpha: 1.0)
    }
    class var appPink: UIColor {
        return self.hexColor(0xFD5B71, alpha: 1.0)
    }
    class var appOrange: UIColor {
        return self.hexColor(0xFFA656, alpha: 1.0)
    }
    class var appGreen: UIColor {
        return self.hexColor(0x07E092, alpha: 1.0)
    }
    class var appBlack2: UIColor {
        return self.hexColor(0x18152C, alpha: 1.0)
    }
    class var appBlue: UIColor {
        return self.hexColor(0x3D4ABA, alpha: 1.0)
    }
    class var appBlack: UIColor {
        return self.hexColor(0x070417, alpha: 1.0)
    }
    class func hexColor(_ hexColorNumber: UInt32, alpha: CGFloat) -> UIColor {
        let red = (hexColorNumber & 0xff0000) >> 16
        let green = (hexColorNumber & 0x00ff00) >> 8
        let blue = (hexColorNumber & 0x0000ff)
        return self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: alpha)
    }
}
