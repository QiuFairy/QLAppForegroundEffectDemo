//
//  ViewController.m
//  QLAppForegroundEffectDemo
//
//  Created by mac2015 on 2017/12/15.
//  Copyright © 2017年 QiuFairy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"ajkfsjka";
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 200, 300)];
    imageV.image = [UIImage imageNamed:@"ima"];
    [self.view addSubview:imageV];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
