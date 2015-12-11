//
//  CustomViewController.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "CustomTabBarController.h"
#import "HomeViewController.h"
#import "ExpertViewController.h"
#import "CommunityViewController.h"
#import "MeViewController.h"

@interface CustomTabBarController ()

@end

@implementation CustomTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建子视图控制器
    [self createSubViewController];
}

- (void)createSubViewController {
    //子视图控制器的容器
    NSMutableArray *subControllers = [[NSMutableArray alloc] initWithCapacity:0];
    //子视图控制器名称
    NSArray *controllers = @[@"HomeViewController", @"ExpertViewController", @"CommunityViewController", @"MeViewController"];
    //循环创建子视图控制器
    for (int i = 0; i < controllers.count; i ++) {
        Class cls = NSClassFromString(controllers[i]);
        UIViewController *controller = [[cls alloc] init];
        [subControllers addObject:controller];
    }
    self.viewControllers = subControllers;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
