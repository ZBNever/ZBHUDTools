//
//  ZBHUDTools.h
//  ZBHUDTools
//
//  Created by Never on 2018/4/8.
//  Copyright © 2018年 never. All rights reserved.
//  MBProgressHUD封装

#import <Foundation/Foundation.h>
#import <MBProgressHUD/MBProgressHUD.h>

@interface ZBHUDTools : NSObject<MBProgressHUDDelegate>

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
