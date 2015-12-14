//
//  ObjectFactory.m
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "Factory.h"

@implementation Factory

#pragma mark - 创建button
+ (UIButton *)createButtonWithframe:(CGRect)frame backgroundColor:(UIColor *)color target:(id)target action:(SEL)selector {
    return [self createButtonWithframe:frame title:nil backgroundColor:color target:target action:selector];
}

+ (UIButton *)createButtonWithframe:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)selector {
    return [self createButtonWithframe:frame title:title backgroundColor:OrangeColor target:target action:selector];
}

+ (UIButton *)createButtonWithframe:(CGRect)frame title:(NSString *)title  backgroundColor:(UIColor *)color target:(id)target action:(SEL)selector {
    return [self createButtonWithType:UIButtonTypeCustom frame:frame title:title backgroundColor:color image:nil clickedImage:nil backImage:nil clickedBackImage:nil target:target action:selector];
}

+ (UIButton *)createButtonWithType:(UIButtonType)type frame:(CGRect)frame title:(NSString *)title  backgroundColor:(UIColor *)color target:(id)target action:(SEL)selector {
    return [self createButtonWithType:type frame:frame title:title backgroundColor:color image:nil clickedImage:nil backImage:nil clickedBackImage:nil target:target action:selector];
}

+ (UIButton *)createButtonWithType:(UIButtonType)type frame:(CGRect)frame image:(UIImage *)image clickedImage:(UIImage *)clickedImage target:(id)target action:(SEL)selector {
    return [self createButtonWithType:type frame:frame title:nil backgroundColor:ClearColor image:image clickedImage:clickedImage backImage:nil clickedBackImage:nil target:target action:selector];
}

+ (UIButton *)createButtonWithType:(UIButtonType)type frame:(CGRect)frame title:(NSString *)title  backImage:(UIImage *)backImage clickedBackImage:(UIImage *)clickedBackImage target:(id)target action:(SEL)selector {
    return [self createButtonWithType:type frame:frame title:title backgroundColor:ClearColor image:nil clickedImage:nil backImage:backImage clickedBackImage:clickedBackImage target:target action:selector];
}

+ (UIButton *)createButtonWithType:(UIButtonType)type
                             frame:(CGRect)frame
                             title:(NSString *)title
                   backgroundColor:(UIColor *)color
                             image:(UIImage *)image
                      clickedImage:(UIImage *)clickedImage
                         backImage:(UIImage *)backImage
                  clickedBackImage:(UIImage *)clickedBackImage
                            target:(id)target
                            action:(SEL)selector {
    UIButton *button = [UIButton buttonWithType:type];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:clickedImage forState:UIControlStateHighlighted];
    [button setBackgroundColor:color];
    [button setBackgroundImage:backImage forState:UIControlStateNormal];
    [button setBackgroundImage:backImage forState:UIControlStateHighlighted];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}

#pragma mark - 创建label
+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame {
    return [self createLabelWithTitle:title frame:frame fontSize:14.f];
}

+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame textColor:(UIColor *)color {
    return [self createLabelWithTitle:title frame:frame backgroundColor:ClearColor textColor:color fontSize:14.f];
}

+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame fontSize:(CGFloat)fontSize {
    return [self createLabelWithTitle:title frame:frame backgroundColor:ClearColor textColor:BlackColor fontSize:fontSize];
}

+ (UILabel *)createLabelWithTitle:(NSString *)title frame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor textColor:(UIColor *)color fontSize:(CGFloat)fontSize {
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = title;
    label.textColor = color;
    label.backgroundColor = backgroundColor;
    label.font = [UIFont systemFontOfSize:fontSize];
    return label;
}

#pragma mark - 创建View
+ (UIView *)createViewWithBackgroundColor:(UIColor *)color frame:(CGRect)frame {
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = color;
    return view;
}

#pragma mark - 创建textField
+ (UITextField *)createViewWithText:(NSString *)text frame:(CGRect)frame placeholder:(NSString *)placeholder textColor:(UIColor *)color borderStyle:(UITextBorderStyle)borderStyle {
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    textField.placeholder = placeholder;
    textField.borderStyle = borderStyle;
    textField.text = text;
    textField.textColor = color;
    return textField;
}

@end
