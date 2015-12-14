//
//  ObjectFactory.h
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Factory : NSObject

//创建button的工厂
+ (UIButton *)createButtonWithframe:(CGRect)frame backgroundColor:(UIColor *)color target:(id)target action:(SEL)selector;
+ (UIButton *)createButtonWithframe:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)selector;
+ (UIButton *)createButtonWithframe:(CGRect)frame title:(NSString *)title  backgroundColor:(UIColor *)color target:(id)target action:(SEL)selector;
+ (UIButton *)createButtonWithType:(UIButtonType)type frame:(CGRect)frame title:(NSString *)title  backgroundColor:(UIColor *)color target:(id)target action:(SEL)selector;
+ (UIButton *)createButtonWithType:(UIButtonType)type frame:(CGRect)frame image:(UIImage *)image clickedImage:(UIImage *)clickedImage target:(id)target action:(SEL)selector;
+ (UIButton *)createButtonWithType:(UIButtonType)type frame:(CGRect)frame title:(NSString *)title  backImage:(UIImage *)backImage clickedBackImage:(UIImage *)clickedBackImage target:(id)target action:(SEL)selector;
+ (UIButton *)createButtonWithType:(UIButtonType)type frame:(CGRect)frame title:(NSString *)title backgroundColor:(UIColor *)color image:(UIImage *)image clickedImage:(UIImage *)clickedImage backImage:(UIImage *)backImage clickedBackImage:(UIImage *)clickedBackImage target:(id)target action:(SEL)selector;

//创建label的工厂
+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame;
+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame textColor:(UIColor *)color;
+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame fontSize:(CGFloat)fontSize;
+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor textColor:(UIColor *)color fontSize:(CGFloat)fontSize;

//创建View的工厂
+ (UIView *)createViewWithBackgroundColor:(UIColor *)color frame:(CGRect)frame;

//创建textField的工厂
+ (UITextField *)createViewWithText:(NSString *)text frame:(CGRect)frame placeholder:(NSString *)placeholder textColor:(UIColor *)color borderStyle:(UITextBorderStyle)borderStyle;
@end
