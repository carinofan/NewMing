//
//  ViewController.m
//  ControllerContainer
//
//  Created by Fanming on 15/8/24.
//  Copyright (c) 2015年 FanMing. All rights reserved.
//

#import "ManagerViewController.h"

@interface ManagerViewController ()

@end

@implementation ManagerViewController
-(void)loadView{
    [super loadView];
    NSLog(@"1_ManagerViewController_loadView");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"2_ManagerViewController_viewDidLoad");
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.rootViewController = [[ModuleRootViewController alloc]init];
    [self addChildViewController:self.rootViewController];
    [self.view addSubview:self.rootViewController.view];
    
    self.customViewController = [[CustomViewController alloc]init];
    [self addChildViewController:self.customViewController];
    
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"3_ManagerViewController_viewWillAppear");
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"4_ManagerViewController_viewDidAppear");
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"5_ManagerViewController_viewWillDisappear");
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"6_ManagerViewController_viewDidDisappear");
}
- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"7_ManagerViewController_viewWillLayoutSubviews");
}
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"8_ManagerViewController_viewDidLayoutSubviews");
}
- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    NSLog(@"9_ManagerViewController_didReceiveMemoryWarning");
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self transitionFromViewController:self.rootViewController toViewController:self.customViewController duration:1 options:UIViewAnimationOptionOverrideInheritedCurve animations:nil completion:^(BOOL finished) {
        
    }];
}


@end
