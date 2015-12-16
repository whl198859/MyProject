//
//  CollectionDetailModel.h
//  Exam
//
//  Created by wanghailong on 15/12/16.
//  Copyright © 2015年 Hailong.wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CollectionDetailModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *descr;
@property (nonatomic, copy) NSString *cover;
@property (nonatomic, copy) NSString *authorFace;
@property (nonatomic, copy) NSString *photoCount;
@property (nonatomic, copy) NSString *viewCount;
@property (nonatomic, copy) NSString *likeCount;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@end
