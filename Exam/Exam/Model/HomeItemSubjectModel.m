//
//  HomeItemSubjectModel.m
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import "HomeItemSubjectModel.h"

/*
 PropertyCopyString(type);
 PropertyCopyString(pic);
 PropertyCopyString(title);
 PropertyCopyString(count);
 PropertyCopyString(countText);
 PropertyCopyString(caseID);
 */

@implementation HomeItemSubjectModel

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        self.type = [dict objectForKey:@"item_type"];
        self.pic = [dict objectForKey:@"pic"];
        self.title = [dict objectForKey:@"title"];
        self.count = [dict objectForKey:@"col_count"];
        self.countText = [dict objectForKey:@"col_count_text"];
        self.caseID = [dict objectForKey:@"id"];
    }
    return self;
}

@end
