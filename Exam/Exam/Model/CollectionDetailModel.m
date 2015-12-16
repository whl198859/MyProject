//
//  CollectionDetailModel.m
//  Exam
//
//  Created by wanghailong on 15/12/16.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "CollectionDetailModel.h"

@implementation CollectionDetailModel

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        self.title = [dict objectForKey:@"col_name"];
        self.summary = [dict objectForKey:@"col_summary"];
        self.descr = [dict objectForKey:@"title_sub_3"];
        self.cover = [dict objectForKey:@"cover"];
        self.authorFace = [dict objectForKey:@"author_face"];
        self.photoCount = [dict objectForKey:@"photo_count"];
        self.viewCount = [dict objectForKey:@"view_count"];
        self.likeCount = [dict objectForKey:@"like_count"];
    }
    return self;
}

@end
