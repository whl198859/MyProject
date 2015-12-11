//
//  BaseViewController.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "BaseViewController.h"

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
    
    self.view.backgroundColor = RandomColor;
    
    //加载数据
    [self initData];
    
    //创建视图
    [self createView];
    
    //添加行为
    [self addTouchAction];
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

#pragma mark - 键盘通知回调
- (void)keyboardWillShowAction:(NSNotification *)notification {
    //键盘将要显示
}

- (void)keyboardWillHideAction:(NSNotification *)notification {
    //键盘将要隐藏
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
