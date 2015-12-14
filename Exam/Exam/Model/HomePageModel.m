//
//  HomePageModel.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomePageModel.h"

@implementation HomePageModel

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithDictionary:@{@"featured_banners2":@"banner", @"temai_coupon_recommend":@"recommend", @"photos_tag_style_space_top20":@"topPhoto"}];
}

@end
