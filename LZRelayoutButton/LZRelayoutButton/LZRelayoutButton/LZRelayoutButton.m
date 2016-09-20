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
        
        CGFloat x = contentRect.size.width - self.offset - self.imageSize.width ;
        CGFloat y =  contentRect.size.height -  self.imageSize.height;
        y = y/2;
        
        
        CGRect rect = CGRectMake(x,y,self.imageSize.width,self.imageSize.height);
        
        return rect;
    } else if (self.lzType == LZRelayoutButtonTypeBottom) {

        CGFloat x =  contentRect.size.width -  self.imageSize.width;

        CGFloat  y=   self.offset   ;
        
        x = x / 2;
        
        CGRect rect = CGRectMake(x,y,self.imageSize.width,self.imageSize.height);
        
        return rect;

    } else {
        return [super imageRectForContentRect:contentRect];
    }
    
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
    if (self.lzType == LZRelayoutButtonTypeLeft) {
        
        return CGRectMake(0, 0, contentRect.size.width - self.offset - self.imageSize.width , contentRect.size.height);
        
        
    } else if (self.lzType == LZRelayoutButtonTypeBottom) {
        
        return CGRectMake(0,   self.offset + self.imageSize.height , contentRect.size.width , contentRect.size.height - self.offset - self.imageSize.height );
        
    } else {
        return [super titleRectForContentRect:contentRect];
    }
}

@end
