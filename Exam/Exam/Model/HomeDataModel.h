//
//  HomeDataModel.h
//  Exam
//
//  Created by wanghailong on 15/12/11.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "HomePageModel.h"

@interface HomeDataModel : JSONModel

PropertyRetainObject(HomePageModel, data);

@end
