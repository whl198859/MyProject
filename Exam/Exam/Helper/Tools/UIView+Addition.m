//
//  UIView+Addition.m
//  Exam
//
//  Created by wanghailong on 15/12/14.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "UIView+Addition.h"

@implementation UIView (Addition)

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)left {
    return self.frame.origin.x;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setYOffset:(CGFloat)yOffset {
    self.frame = CGRectMake(self.frame.origin.x, yOffset, self.frame.size.width, self.frame.size.height);
}

- (void)setXOffset:(CGFloat)xOffset {
    self.frame = CGRectMake(xOffset, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (void)setWidth:(CGFloat)width {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
}

- (void)setHeight:(CGFloat)height {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
}

- (void)setOrigin:(CGPoint)point {
    CGRect frame = self.frame;
    frame.origin = point;
    self.frame = frame;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

@end
