//
//  HomeItemSubjectModel.h
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomeItemSubjectModel : NSObject

PropertyCopyString(type);
PropertyCopyString(pic);
PropertyCopyString(title);
PropertyCopyString(count);
PropertyCopyString(countText);
PropertyCopyString(caseID);

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@end
