//
//  YHULrcLine.h
//  YHUzone
//
//  Created by yanghu on 2018/5/3.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHULrcLine : NSObject
@property (nonatomic, copy) NSString *text;
@property (nonatomic, assign) NSTimeInterval time;

- (instancetype)initWithLrclineString:(NSString *)lrclineString;
+ (instancetype)lrcLineWithLrclineString:(NSString *)lrclineString;

@end
