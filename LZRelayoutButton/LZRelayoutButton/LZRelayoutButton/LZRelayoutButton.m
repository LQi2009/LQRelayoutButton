//
//  LZRelayoutButton.m
//  LZRelayoutButton
//
//  Created by Artron_LQQ on 16/5/5.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "LZRelayoutButton.h"

@implementation LZRelayoutButton

- (void)setLzType:(LZRelayoutButtonType)lzType {
    _lzType = lzType;
    
    if (lzType != LZRelayoutButtonTypeNomal) {
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
}

//重写父类方法,改变标题和image的坐标
- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    
    if (self.lzType == LZRelayoutButtonTypeLeft) {
        CGFloat inteval = CGRectGetHeight(contentRect)/8.0;
        
        //设置图片的宽高为button高度的3/4;
        CGFloat imageH = CGRectGetHeight(contentRect) - 2 * inteval;
        
        CGRect rect = CGRectMake(CGRectGetWidth(contentRect) - imageH - inteval, inteval, imageH, imageH);
        
        return rect;
    } else if (self.lzType == LZRelayoutButtonTypeBottom) {
        CGFloat inteval = CGRectGetWidth(contentRect)/16.0;
        inteval = MIN(inteval, 6);
        
        //设置图片的宽高为button宽度的7/8;
        CGFloat imageW = CGRectGetWidth(contentRect) - 2 * inteval;
        
        CGRect rect = CGRectMake(inteval, inteval, imageW, imageW);
        
        return rect;
    } else {
        return [super imageRectForContentRect:contentRect];
    }
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
    if (self.lzType == LZRelayoutButtonTypeLeft) {
        CGFloat inteval = CGRectGetHeight(contentRect)/8.0;
        //设置图片的宽高为button高度的3/4;
        CGFloat imageH = CGRectGetHeight(contentRect) - 2 * inteval;
        
        CGRect rect = CGRectMake(inteval, inteval, CGRectGetWidth(contentRect) - imageH - 2*inteval, CGRectGetHeight(contentRect) - 2*inteval);
        
        return rect;
    } else if (self.lzType == LZRelayoutButtonTypeBottom) {
        CGFloat inteval = CGRectGetWidth(contentRect)/16.0;
        inteval = MIN(inteval, 6);
        
        //设置图片的宽高为button宽度的7/8;
        CGFloat imageW = CGRectGetWidth(contentRect) - 2 * inteval;
        
        CGRect rect = CGRectMake(0, inteval*2 + imageW, CGRectGetWidth(contentRect) , CGRectGetHeight(contentRect) - 3*inteval - imageW);
        
        return rect;
    } else {
        return [super titleRectForContentRect:contentRect];
    }
}

@end
