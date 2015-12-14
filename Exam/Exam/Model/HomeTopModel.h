//
//  HomeTopModel.h
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol HomeTopModel <NSObject>

@end

@interface HomeTopModel : JSONModel

PropertyCopyString(name);
PropertyCopyString(url);

@end
