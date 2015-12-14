//
//  HomeRecommendModel.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeRecommendModel.h"

@implementation HomeRecommendModel

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithDictionary:@{@"pic_url":@"url"}];
}

@end
