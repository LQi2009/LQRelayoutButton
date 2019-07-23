//
//  LQRelayoutButton.swift
//  LQRelayoutButtonSwift
//
//  Created by LiuQiqiang on 2018/8/17.
//  Copyright © 2018年 LiuQiqiang. All rights reserved.
//

import UIKit

enum LQButtonRelayout {
    case left, bottom, normal
}
extension UIButton {
    
    func relayout(_ style: LQButtonRelayout) {
        
        self.layoutIfNeeded()
        guard let titleFrame = self.titleLabel?.frame else {
            return
        }
        guard let imageFrame = self.imageView?.frame else {
            return
        }
        
        let space = titleFrame.minX - imageFrame.minX - imageFrame.width
        
        if style == .left {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleFrame.width + space, 0, -(titleFrame.width + space))
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(titleFrame.minX - imageFrame.minX), 0, titleFrame.minX - imageFrame.minX)
        } else if style == .bottom {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, titleFrame.height + space, -(titleFrame.width))
            self.titleEdgeInsets = UIEdgeInsetsMake(imageFrame.height + space, -(imageFrame.width), 0, 0)
        }
    }
}


















