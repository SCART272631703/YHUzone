//
//  UIBarButtonItem+YHUExtension.h
//  YHUzone
//
//  Created by yanghu on 2018/5/2.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YHUExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
