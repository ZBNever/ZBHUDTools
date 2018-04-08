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

/**
 仅文字提示

 @param text 提示文字
 @return MBProgressHUD
 */
+ (MBProgressHUD *)MBProgressHUDOnlyText:(NSString *)text;

/**
 带进度加载

 @param progress NSProgress对象
 @param text 提示文字
 @return MBProgressHUD
 */
+ (MBProgressHUD *)MBProgressHUDProgress:(NSProgress *)progress text:(NSString *)text;

/**
 自定义View

 @param imageName 需要输入你的本地图片名称
 @param text 输入提示文字
 @return MBProgressHUD
 */
+ (MBProgressHUD *)MBProgressHUDCustomView:(NSString *)imageName text:(NSString *)text;

@end
