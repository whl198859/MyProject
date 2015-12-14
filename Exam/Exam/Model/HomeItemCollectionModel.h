//
//  HomeItemModel.h
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomeItemCollectionModel : NSObject

PropertyCopyString(type);
PropertyCopyString(pic);
PropertyCopyString(title);
PropertyCopyString(subtitle);
PropertyCopyString(subtitle1);
PropertyCopyString(subtitle2);
PropertyCopyString(subtitle3);
PropertyCopyString(authorNickname);
PropertyCopyString(authorFace);
PropertyCopyString(caseID);

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@end
