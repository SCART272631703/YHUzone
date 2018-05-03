//
//  YHULrcCell.h
//  YHUzone
//
//  Created by yanghu on 2018/5/3.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YHULrcLabel;

@interface YHULrcCell : UITableViewCell

@property (nonatomic, weak, readonly) YHULrcLabel *lrcLabel;

+ (instancetype)lrcCellWithTableView:(UITableView *)tableView;

@end
