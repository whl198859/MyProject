//
//  BaseViewController.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "BaseViewController.h"
#import "BackButton.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //注册键盘弹出事件和隐藏事件
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShowAction:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHideAction:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    //注销键盘弹出事件和隐藏事件
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = RGB(106, 227, 158);
    self.navigationController.navigationBar.translucent = NO;
    
    [self createBackButton];
    
    //加载数据
    [self initData];
    
    //创建视图
    [self createView];
    
    //添加行为
    [self addTouchAction];
}

- (void)createBackButton {
    BackButton *back = [[BackButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [back addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self createNavigationLeftButton:back];
}

//创建视图
- (void)createView {
    //不做实现，只为了取消警告
}

//加载数据
- (void)initData {
    //不做实现，只为了取消警告
}

//添加行为
- (void)addTouchAction {
    //不做实现，只为了取消警告
}

//键盘即将显示
- (void)keyboardWillShow {
    //不做实现，只为了取消警告
}

//键盘即将隐藏
- (void)keyboardWillHide {
    //不做实现，只为了取消警告
}

//创建上导航的左侧按钮
- (void)createNavigationBarLeftBarButtonItemWithTitle:(NSString *)title {
    [self createNavigationBarLeftBarButtonItemWithTitle:title style:UIBarButtonItemStylePlain];
}

- (void)createNavigationBarLeftBarButtonItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style {
    [self createNavigationBarLeftBarButtonItemWithTitle:title style:style target:self action:@selector(backAction)];
}

- (void)createNavigationBarLeftBarButtonItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action {
    //这个可以简单的理解为特殊的按钮，不需要我们去考虑布局，只要实现样式和内容，系统为我们进行布局。
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithTitle:title style:style target:target action:action];
    self.navigationItem.leftBarButtonItem = left;
}

/*********** 新增 ***********/
//创建上导航左侧按钮(以view作模板)
- (void)createNavigationLeftButton:(id)view {
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:view];
    self.navigationItem.leftBarButtonItem = leftItem;
}

//创建上导航的右侧按钮
- (void)createNavigationBarRightBarButtonItemWithTitle:(NSString *)title {
    [self createNavigationBarLeftBarButtonItemWithTitle:title style:UIBarButtonItemStylePlain];
}

- (void)createNavigationBarRightBarButtonItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style {
    [self createNavigationBarLeftBarButtonItemWithTitle:title style:style target:self action:@selector(rightAction)];
}

- (void)createNavigationBarRightBarButtonItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action {
    //这个可以简单的理解为特殊的按钮，不需要我们去考虑布局，只要实现样式和内容，系统为我们进行布局。
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithTitle:title style:style target:target action:action];
    self.navigationItem.rightBarButtonItem = right;
}

//创建上导航右侧按钮(以view作模板)
- (void)createNavigationRightButton:(id)view {
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithCustomView:view];
    self.navigationItem.rightBarButtonItem = right;
}

#pragma mark - 键盘通知回调
- (void)keyboardWillShowAction:(NSNotification *)notification {
    //键盘将要显示
}

- (void)keyboardWillHideAction:(NSNotification *)notification {
    //键盘将要隐藏
}

#pragma mark - 上导航左侧按钮和右侧按钮的行为
- (void)leftAction {
    //不做实现，只为了取消警告
}

- (void)rightAction {
    //不做实现，只为了取消警告
}

#pragma mark - 返回按钮
- (void)backAction {
    [self.navigationController popViewControllerAnimated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
