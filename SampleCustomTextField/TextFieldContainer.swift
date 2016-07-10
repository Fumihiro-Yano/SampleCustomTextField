//
//  TextFieldContainer.swift
//  SampleCustomTextField
//
//  Created by 矢野史洋 on 2016/07/10.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

@IBDesignable
class TextFieldContainer: UIView {
    private var width: CGFloat {
        return CGRectGetWidth(frame)
    }
    private var height: CGFloat {
        return CGRectGetHeight(frame)
    }
    private let borderBottom: CALayer = CALayer()
    
    @IBInspectable
    var borderColor: UIColor = UIColor.blackColor() {
        didSet {
            setupBorderBottom()
        }
    }
    
    @IBInspectable
    var borderBottomWidth: CGFloat = 0 {
        didSet {
            setupBorderBottom()
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        subviews.first?.becomeFirstResponder()
    }
    
    private func setupBorderBottom() {
        borderBottom.removeFromSuperlayer()
        borderBottom.frame = CGRectMake(0, height - borderBottomWidth, width, borderBottomWidth)
        borderBottom.backgroundColor = borderColor.CGColor
        layer.addSublayer(borderBottom)
    }
}
