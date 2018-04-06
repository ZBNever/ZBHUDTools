//
//  Tools.h
//  WallPaper
//
//  Created by Never on 2017/2/15.
//  Copyright © 2017年 Never. All rights reserved.
//  MBProgressHUD封装

#import <MBProgressHUD/MBProgressHUD.h>

@interface Tools : NSObject<MBProgressHUDDelegate>
///默认加载方式
+ (MBProgressHUD *)MBProgressHUD:(NSString *)text;
///仅文字提示
+ (MBProgressHUD *)MBProgressHUDOnlyText:(NSString *)text;
///带进度view
+ (MBProgressHUD *)MBProgressHUDProgress:(NSString *)text;
///自定义视图
+ (MBProgressHUD *)MBProgressHUDCustomView:(NSString *)text;



@end
