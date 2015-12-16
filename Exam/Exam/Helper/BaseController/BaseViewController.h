//
//  BaseViewController.h
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking/AFNetworking.h>
#import "NetRequest.h"

@interface BaseViewController : UIViewController

//创建上导航的左侧按钮
- (void)createNavigationBarLeftBarButtonItemWithTitle:(NSString *)title;
- (void)createNavigationBarLeftBarButtonItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style;
- (void)createNavigationBarLeftBarButtonItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;

//创建上导航左侧按钮(以view作模板)
- (void)createNavigationLeftButton:(id)view;

//创建上导航的右侧按钮
- (void)createNavigationBarRightBarButtonItemWithTitle:(NSString *)title;
- (void)createNavigationBarRightBarButtonItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style;
- (void)createNavigationBarRightBarButtonItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;

//创建上导航右侧按钮(以view作模板)
- (void)createNavigationRightButton:(id)view;

//创建视图
- (void)createView;
//加载数据
- (void)initData;
//添加行为
- (void)addTouchAction;
//键盘即将显示
- (void)keyboardWillShow;
//键盘即将隐藏
- (void)keyboardWillHide;

//左侧按钮行为
- (void)leftAction;
//右侧按钮行为
- (void)rightAction;
//创建返回的按钮
- (void)createBackButton;
//返回按钮
- (void)backAction;

@end
