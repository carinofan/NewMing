//
//  ViewController.h
//  ControllerContainer
//
//  Created by Fanming on 15/8/24.
//  Copyright (c) 2015年 FanMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModuleRootViewController.h"
#import "CustomViewController.h"

@interface ManagerViewController : UIViewController

@property (strong, nonatomic)ModuleRootViewController *rootViewController;
@property (strong, nonatomic)CustomViewController *customViewController;

@end

