//
//  File.swift
//  Summit
//
//  Created by Beiyi Xu on 12/1/21.
//

import UIKit

extension UIBezierPath {
    static func calculateBounds(paths: [UIBezierPath]) -> CGRect {
        let myPath = UIBezierPath()
        for path in paths {
            myPath.append(path)
        }
        return (myPath.bounds)
    }
    
    static var topLine: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 15.33, y: 360))
        shape.addLine(to: CGPoint(x: 181.6, y: 4.35))
        shape.addLine(to: CGPoint(x: 243.52, y: 158.82))
        return shape
    }
    
    static var topLine2: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 211.76, y: 222.35))
        shape.addLine(to: CGPoint(x: 296.3, y: 55.46))
        shape.addLine(to: CGPoint(x: 438.85, y: 363.54))
        return shape
    }
    
    static var midLine: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 85.92, y: 357.65))
        shape.addLine(to: CGPoint(x: 185.38, y: 152.23))
        shape.addLine(to: CGPoint(x: 245.2, y: 302.29))
        shape.addLine(to: CGPoint(x: 297.38, y: 192.46))
        shape.addLine(to: CGPoint(x: 375.82, y: 349.43))
        return shape
    }
    
    static var bottomLeft: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 137.64, y: 356.47))
        shape.addLine(to: CGPoint(x: 185.93, y: 263.15))
        shape.addLine(to: CGPoint(x: 217.68, y: 351.76))
        return shape
    }
    
    static var bottomRight: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 261.17, y: 258.82))
        shape.addLine(to: CGPoint(x: 321.2, y: 354.13))
        return shape
    }
    
    static var wholeMountain: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 15.33, y: 360))
        shape.addLine(to: CGPoint(x: 181.6, y: 4.35))
        shape.addLine(to: CGPoint(x: 243.52, y: 158.82))
        shape.addLine(to: CGPoint(x: 296.3, y: 55.46))
        shape.addLine(to: CGPoint(x: 438.85, y: 363.54))
        shape.close()
        return shape
    }
    
    
    
    
}

