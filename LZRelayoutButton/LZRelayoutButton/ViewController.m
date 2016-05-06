//
//  ViewController.m
//  LZRelayoutButton
//
//  Created by Artron_LQQ on 16/5/5.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "ViewController.h"
#import "LZRelayoutButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.backgroundColor = [UIColor redColor];
    but.titleLabel.backgroundColor = [UIColor grayColor];
    but.imageView.backgroundColor = [UIColor purpleColor];
    but.frame = CGRectMake(50, 100, 110, 30);
    [but setTitle:@"系统默认" forState:UIControlStateNormal];
//    [but setImage:[UIImage imageNamed:@"AppIcon60x60@3x"] forState:UIControlStateNormal];
    [but setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:but];
    
    
    
    LZRelayoutButton *lz = [LZRelayoutButton buttonWithType:UIButtonTypeCustom];
    lz.backgroundColor = [UIColor redColor];
    lz.titleLabel.backgroundColor = [UIColor grayColor];
    lz.imageView.backgroundColor = [UIColor purpleColor];
    lz.frame = CGRectMake(50, 160, 110, 30);
    [lz setTitle:@"标题在左" forState:UIControlStateNormal];
//    [lz setImage:[UIImage imageNamed:@"AppIcon60x60@3x"] forState:UIControlStateNormal];
    lz.lzType = LZRelayoutButtonTypeLeft;
        [lz setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:lz];
    
    
    LZRelayoutButton *lz1 = [LZRelayoutButton buttonWithType:UIButtonTypeCustom];
    lz1.backgroundColor = [UIColor redColor];
//    lz1.titleLabel.backgroundColor = [UIColor grayColor];
//    lz1.imageView.backgroundColor = [UIColor purpleColor];
    lz1.frame = CGRectMake(50, 300, 80, 100);
    lz1.lzType = LZRelayoutButtonTypeBottom;
    [lz1 setTitle:@"标题在下" forState:UIControlStateNormal];
    [lz1 setImage:[UIImage imageNamed:@"AppIcon60x60@3x"] forState:UIControlStateNormal];
//    [lz1 setImage:[UIImage imageNamed:@"check_icon"] forState:UIControlStateNormal];
    [self.view addSubview:lz1];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
