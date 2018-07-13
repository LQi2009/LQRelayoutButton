//
//  ViewController.m
//  LQRelayoutButton
//
//  Created by LiuQiqiang on 2018/7/13.
//  Copyright © 2018年 QiqiangLiu. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+LQRelayout.h"
#import "LQRelayoutButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self kuozhan];
}

- (void) kuozhan {
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor = [UIColor redColor];
    button1.frame = CGRectMake(40, 90, 100, 30);
    [button1 setTitle:@"标题在左" forState:UIControlStateNormal];
    [button1 setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:button1];
    [button1 relayoutBotton:(LQButtonRelayoutTitleLeft)];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(40, 280, 80, 90);
    [button setTitle:@"标题在下" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"AppIcon60x60"] forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button relayoutBotton:(LQButtonRelayoutTitleBottom)];
}

- (void) zileiButton {
    
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.backgroundColor = [UIColor redColor];
    but.titleLabel.backgroundColor = [UIColor grayColor];
    but.imageView.backgroundColor = [UIColor purpleColor];
    but.frame = CGRectMake(50, 100, 110, 30);
    [but setTitle:@"系统默认" forState:UIControlStateNormal];;
    [but setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:but];
    
    
    
    LQRelayoutButton *lz = [LQRelayoutButton buttonWithType:UIButtonTypeCustom];
    lz.backgroundColor = [UIColor redColor];
    lz.titleLabel.backgroundColor = [UIColor grayColor];
    lz.imageView.backgroundColor = [UIColor purpleColor];
    lz.frame = CGRectMake(50, 160, 110, 30);
    [lz setTitle:@"标题在左" forState:UIControlStateNormal];
    //    [lz setImage:[UIImage imageNamed:@"AppIcon60x60@3x"] forState:UIControlStateNormal];
    lz.imageSize = CGSizeMake(20, 20);
    lz.type = LQRelayoutButtonTypeLeft;
    [lz setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:lz];
    
    
    LQRelayoutButton *lz1 = [LQRelayoutButton buttonWithType:UIButtonTypeCustom];
    lz1.backgroundColor = [UIColor redColor];
    //    lz1.titleLabel.backgroundColor = [UIColor grayColor];
    //    lz1.imageView.backgroundColor = [UIColor purpleColor];
    lz1.frame = CGRectMake(50, 300, 80, 100);
    lz1.imageSize = CGSizeMake(80, 80);
    lz1.type = LQRelayoutButtonTypeBottom;
    [lz1 setTitle:@"标题在下" forState:UIControlStateNormal];
    [lz1 setImage:[UIImage imageNamed:@"AppIcon60x60"] forState:UIControlStateNormal];
    //    [lz1 setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:lz1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
