//
//  CustomViewController.m
//  NewMing
//
//  Created by Fanming on 15/8/24.
//  Copyright (c) 2015年 FanMing. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

-(void)loadView{
    [super loadView];
    NSLog(@"1_CustomViewController_loadView");
    self.view.backgroundColor = [UIColor purpleColor];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"2_CustomViewController_viewDidLoad");
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"3_CustomViewController_viewWillAppear");
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"4_CustomViewController_viewWillLayoutSubviews");
}
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"5_CustomViewController_viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"6_CustomViewController_viewDidAppear");
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"7_CustomViewController_viewWillDisappear");
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"8_CustomViewController_viewDidDisappear");
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    NSLog(@"9_CustomViewController_didReceiveMemoryWarning");
}

-(void)dealloc{
    NSLog(@"CustomViewController");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
