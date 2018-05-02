//
//  UIBarButtonItem+YHUExtension.m
//  YHUzone
//
//  Created by yanghu on 2018/5/2.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import "UIBarButtonItem+YHUExtension.h"

@implementation UIBarButtonItem (YHUExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}
@end
