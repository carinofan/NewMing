//
//  ModuleRootViewController.m
//  NewMing
//
//  Created by Fanming on 15/8/24.
//  Copyright (c) 2015年 FanMing. All rights reserved.
//

#import "ModuleRootViewController.h"

@interface ModuleRootViewController ()

@end

@implementation ModuleRootViewController

-(void)loadView{
    [super loadView];
    NSLog(@"1_ModuleRootViewController_loadView");
    self.view.backgroundColor = [UIColor yellowColor];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"2_ModuleRootViewController_viewDidLoad");
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"3_ModuleRootViewController_viewWillAppear");
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"4_ModuleRootViewController_viewWillLayoutSubviews");
}
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"5_ModuleRootViewController_viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"6_ModuleRootViewController_viewDidAppear");
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"7_ModuleRootViewController_viewWillDisappear");
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"8_ModuleRootViewController_viewDidDisappear");
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    NSLog(@"9_ModuleRootViewController_didReceiveMemoryWarning");
}

-(void)dealloc{
    NSLog(@"ModuleRootViewController__dealloc");
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
