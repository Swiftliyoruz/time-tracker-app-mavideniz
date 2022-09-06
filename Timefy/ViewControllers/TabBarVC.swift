//
//  TabBarVC.swift
//  Timefy
//
//  Created by Doğancan Mavideniz on 6.09.2022.
//

import UIKit

class TabBarVC: UITabBar {

    private var shapeLayer: CALayer?

    private func addShape() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = createPath()
        shapeLayer.strokeColor = UIColor.clear.cgColor
        shapeLayer.fillColor = UIColor(named: "appBlue")?.cgColor
        shapeLayer.lineWidth = 1.0

        shapeLayer.shadowOffset = CGSize(width: 0, height: 0)
        shapeLayer.shadowRadius = 10
        shapeLayer.shadowColor = UIColor(named: "appBlue")?.cgColor
        shapeLayer.shadowOpacity = 0.3

        if let oldShapeLayer = self.shapeLayer {
            self.layer.replaceSublayer(oldShapeLayer, with: shapeLayer)
        } else {
            self.layer.insertSublayer(shapeLayer, at: 0)
        }
        self.shapeLayer = shapeLayer
    }

    override func draw(_ rect: CGRect) {
        self.addShape()
        self.unselectedItemTintColor = UIColor(named: "appWhite")
        self.tintColor = UIColor(named: "appRed")
    }

    func createPath() -> CGPath {
        let height: CGFloat = -40
        let path = UIBezierPath()
        let centerWidth = self.frame.width / 2

        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: self.frame.width, y: 0), controlPoint: CGPoint(x: centerWidth, y: height))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        path.addLine(to: CGPoint(x: 0, y: self.frame.height))
        path.close()

        return path.cgPath
    }
}
