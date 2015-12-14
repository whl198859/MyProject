//
//  HomeItemModel.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeItemCollectionModel.h"

@implementation HomeItemCollectionModel

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        self.type = [dict objectForKey:@"item_type"];
        self.pic = [dict objectForKey:@"cover_pic"];
        self.title = [dict objectForKey:@"title"];
        self.subtitle = [dict objectForKey:@"title_sub"];
        self.subtitle1 = [dict objectForKey:@"title_sub_1"];
        self.subtitle2 = [dict objectForKey:@"title_sub_2"];
        self.subtitle3 = [dict objectForKey:@"title_sub_3"];
        self.authorNickname = [dict objectForKey:@"author_nick"];
        self.authorFace = [dict objectForKey:@"author_face"];
        self.caseID = [dict objectForKey:@"id"];
    }
    return self;
}

@end
