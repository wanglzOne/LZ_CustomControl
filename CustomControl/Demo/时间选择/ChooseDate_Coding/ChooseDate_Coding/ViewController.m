//
//  ViewController.m
//  ChooseDate_Coding
//
//  Created by lz on 2017/12/15.
//  Copyright © 2017年 wanglz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *v = [[UIView alloc] init];
    v.lz_centerY = self.view.bounds.size.height/2;
    v.lz_centerX = self.view.bounds.size.width/2;
    v.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:v];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
