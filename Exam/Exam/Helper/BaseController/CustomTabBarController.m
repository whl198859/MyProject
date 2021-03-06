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
    self.tabBar.barTintColor = RGB(106, 227, 158);
    self.tabBar.translucent = NO;

    //创建子视图控制器
    [self createSubViewController];
}

- (void)createSubViewController {
    //子视图控制器的容器
    NSMutableArray *subControllers = [[NSMutableArray alloc] initWithCapacity:0];
    //子视图控制器名称
    NSArray *controllers = @[@"HomeViewController", @"ExpertViewController", @"CommunityViewController", @"MeViewController"];
    //子视图控制器的按钮title
    NSArray *controllerTitle = @[@"首页", @"专家", @"专区", @"个人中心"];
    //循环创建子视图控制器
    for (int i = 0; i < controllers.count; i ++) {
        Class cls = NSClassFromString(controllers[i]);
        UIViewController *controller = [[cls alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:[controllerTitle objectAtIndex:i] image:nil selectedImage:nil];
        [subControllers addObject:nav];
    }
    self.viewControllers = subControllers;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
