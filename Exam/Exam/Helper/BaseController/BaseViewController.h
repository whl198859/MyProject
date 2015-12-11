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

@end
