//
//  CollectionDetailModel.m
//  Exam
//
//  Created by wanghailong on 15/12/16.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "CollectionDetailModel.h"

@implementation CollectionDetailModel

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithDictionary:@{@"col_name":@"title", @"col_summary":@"summary", @"title_sub_3":@"descr", @"author_face":@"authorFace", @"view_count":@"viewCount", @"photo_count":@"photoCount", @"like_count":@"likeCount"}];
}

@end
