//
//  YHUTabBarController.m
//  YHUzone
//
//  Created by yanghu on 2018/5/2.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import "YHUTabBarController.h"
#import "YHUPlayingViewController.h"

#import "XMGEssenceViewController.h"
#import "XMGNewViewController.h"
#import "XMGFriendTrendsViewController.h"
#import "XMGMeViewController.h"

#import "YHUTabBar.h"
#import "YHUNavigationController.h"

/**
 *
 [UIColor colorWithRed:<#(CGFloat)#> green:<#(CGFloat)#> blue:<#(CGFloat)#> alpha:<#(CGFloat)#>];
 颜色:
 
 24bit颜色: R G B
 * #ff0000
 * #ccee00
 * #000000
 * #ffffff
 
 32bit颜色: ARGB
 * #ff0000ff
 
 常见颜色:
 #ff0000 红色
 #00ff00 绿色
 #0000ff 蓝色
 #000000 黑色
 #ffffff 白色
 
 灰色的特点:RGB一样
 
 1024x1024像素的图片  32bit颜色
 
 1024x1024x32\8 == 1024x1024x4
 1024x1024x24\8 == 1024x1024x3
 */


@implementation YHUTabBarController

+ (void)initialize
{
    // 通过appearance统一设置所有UITabBarItem的文字属性
    // 后面带有UI_APPEARANCE_SELECTOR的方法, 都可以通过appearance对象来统一设置
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 添加子控制器
    [self setupChildVc:[[YHUPlayingViewController alloc] init] title:@"音乐" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    
    [self setupChildVc:[[XMGNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    
    [self setupChildVc:[[XMGFriendTrendsViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    
    [self setupChildVc:[[XMGMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    // 更换tabBar
    [self setValue:[[YHUTabBar alloc] init] forKeyPath:@"tabBar"];
}

/**
 * 初始化子控制器
 */
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置文字和图片
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    // 包装一个导航控制器, 添加导航控制器为tabbarcontroller的子控制器
    YHUNavigationController *nav = [[YHUNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}
@end
