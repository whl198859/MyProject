//
//  UIView+Addition.h
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Addition)

//宽
- (CGFloat)width;
//高
- (CGFloat)height;
//上
- (CGFloat)top;
//底
- (CGFloat)bottom;
//左
- (CGFloat)left;
//右
- (CGFloat)right;
//设置y偏移
- (void)setYOffset:(CGFloat)yOffset;
//设置x偏移
- (void)setXOffset:(CGFloat)xOffset;
//设置宽
- (void)setWidth:(CGFloat)width;
//设置高
- (void)setHeight:(CGFloat)height;
//设置Origin
- (void)setOrigin:(CGPoint)point;
//设置Size
- (void)setSize:(CGSize)size;

@end
