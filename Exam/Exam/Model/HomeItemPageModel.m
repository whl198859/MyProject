//
//  HomeItemDetail.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeItemPageModel.h"

@implementation HomeItemPageModel

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        self.type = [dict objectForKey:@"item_type"];
        self.pic = [dict objectForKey:@"pic"];
        self.title = [dict objectForKey:@"title"];
        self.descr = [dict objectForKey:@"descr"];
        self.caseID = [dict objectForKey:@"id"];
    }
    return self;
}

@end
