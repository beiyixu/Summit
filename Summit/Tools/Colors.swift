//
//  Colors.swift
//  Summit
//
//  Created by Beiyi Xu on 12/1/21.
//

import SwiftUI

extension UIColor {
        class var darkBlue:UIColor{
            return self.hexColor(003399, alpha: 1)
        }

        class var offWhite:UIColor{
            return self.init(red:0.95,green:0.95,blue:0.95,alpha: 1.0)
        }

        class var crust:UIColor{
            return self.hexColor(0xe39448, alpha: 1.0)
        }

        class func hexColor(_ hexColorNumber:UInt32, alpha: CGFloat) -> UIColor {
            let red = (hexColorNumber & 0xff0000) >> 16
            let green = (hexColorNumber & 0x00ff00) >> 8
            let blue =  (hexColorNumber & 0x0000ff)
            return self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: alpha)
        }
}
