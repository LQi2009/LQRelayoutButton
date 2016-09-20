//
//  LZRelayoutButton.h
//  LZRelayoutButton
//
//  Created by Artron_LQQ on 16/5/5.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,LZRelayoutButtonType) {
    LZRelayoutButtonTypeNomal  = 0,//默认
    LZRelayoutButtonTypeLeft   = 1,//标题在左
    LZRelayoutButtonTypeBottom = 2,//标题在下
};

@interface LZRelayoutButton : UIButton

///图片大小
@property (assign,nonatomic)IBInspectable CGSize imageSize;
///图片相对于 top/right 的 offset
@property (assign,nonatomic)IBInspectable CGFloat offset;

@property (assign,nonatomic)IBInspectable LZRelayoutButtonType lzType;

@end

