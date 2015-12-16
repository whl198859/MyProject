//
//  BackButton.m
//  Exam
//
//  Created by wanghailong on 15/12/16.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "BackButton.h"

@implementation BackButton

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    UIBezierPath *bezier = [UIBezierPath bezierPath];
    bezier.lineWidth = 0.8f;
    UIColor *whiteColor = WhiteColor;
    [whiteColor set];
    
    //first
    [bezier moveToPoint:CGPointMake(22, 13)];
    //second
    [bezier addLineToPoint:CGPointMake(13, 22)];
    //third
    [bezier addLineToPoint:CGPointMake(22, 31)];
    //four
    [bezier addLineToPoint:CGPointMake(24, 31)];
    //five
    [bezier addLineToPoint:CGPointMake(15, 22)];
    //six
    [bezier addLineToPoint:CGPointMake(24, 13)];
    [bezier closePath];
    [bezier fill];
    [bezier stroke];
}

@end
