//
//  ViewController.m
//  sdf
//
//  Created by 张凯泽 on 15/9/24.
//  Copyright © 2015年 rytong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *string = @"egbank://com.egbank.mobile?id=samli";
    [[UIApplication sharedApplication]openURL: [NSURL URLWithString:string ]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
