//
//  UIButton+LQRelayout.h
//  LQToolKit-ObjectiveC
//
//  Created by LiuQiqiang on 2018/7/13.
//  Copyright © 2018年 QiqiangLiu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LQButtonRelayout) {
    
    LQButtonRelayoutTitleLeft = 0,
    LQButtonRelayoutTitleBottom = 1,
    LQButtonRelayoutNormal,
};

@interface UIButton (LQRelayout)

- (void)relayoutButton:(LQButtonRelayout)type ;
@end
