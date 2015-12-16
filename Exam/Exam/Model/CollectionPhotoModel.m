//
//  CollectionPhotoModel.m
//  Exam
//
//  Created by wanghailong on 15/12/16.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "CollectionPhotoModel.h"

@implementation CollectionPhotoModel

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithDictionary:@{@"pic_detail":@"originPic"}];
}

@end
