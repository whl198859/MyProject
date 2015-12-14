//
//  HomeTopModel.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeTopModel.h"

@implementation HomeTopModel

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithDictionary:@{@"tag_name":@"name", @"pic_url":@"url"}];
}

@end
