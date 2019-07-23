//
//  LQRelayoutButton.h
//  LQToolKit-ObjectiveC
//
//  Created by LiuQiqiang on 2018/7/13.
//  Copyright © 2018年 QiqiangLiu. All rights reserved.
// 子类

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,LQRelayoutButtonType) {
    LQRelayoutButtonTypeNomal  = 0,//默认
    LQRelayoutButtonTypeLeft   = 1,//标题在左
    LQRelayoutButtonTypeBottom = 2,//标题在下
};


@interface LQRelayoutButton : UIButton

///图片大小 IBInspectable, 可在xib中设置该属性
@property (assign,nonatomic)IBInspectable CGSize imageSize;
///图片相对于 top/right 的 offset
@property (assign,nonatomic)IBInspectable CGFloat offset;

@property (assign,nonatomic)IBInspectable LQRelayoutButtonType type;
@end
