//
//  ZBHUDTools.m
//  ZBHUDTools
//
//  Created by Never on 2018/4/8.
//  Copyright © 2018年 never. All rights reserved.
//

#import "ZBHUDTools.h"

@implementation ZBHUDTools


//默认样式
+ (MBProgressHUD *)MBProgressHUD:(NSString *)text{
    MBProgressHUD *HUD = [self creatHUDwith:text andMod:MBProgressHUDModeIndeterminate];
    return HUD;
}

//带进度条
+ (MBProgressHUD *)MBProgressHUDProgress:(NSProgress *)progress text:(NSString *)text{
    
    MBProgressHUD *HUD = [self creatHUDwith:text andMod:MBProgressHUDModeAnnularDeterminate];
    HUD.progressObject = progress;
    return HUD;
    
}

//仅文字提示
+ (MBProgressHUD *)MBProgressHUDOnlyText:(NSString *)text{
    
    MBProgressHUD *HUD = [self creatHUDwith:text andMod:MBProgressHUDModeText];
    return HUD;
}
//自定义view
+ (MBProgressHUD *)MBProgressHUDCustomView:(NSString *)imageName text:(NSString *)text{
    
    MBProgressHUD *HUD = [self creatHUDwith:text andMod:MBProgressHUDModeCustomView];
    if (!imageName) {
        UIImageView *customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"minion"]];
        HUD.customView = customView;
    }else{
        UIImageView *customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
        HUD.customView = customView;
    }
    return HUD;
}

//封装
+ (MBProgressHUD *)creatHUDwith:(NSString *)text andMod:(MBProgressHUDMode)mod{
    
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:window];
    HUD.mode = mod;
    //NO允许点击其他地方，YES不允许点击其他地方
    HUD.userInteractionEnabled = NO;
    HUD.bezelView.style = MBProgressHUDBackgroundStyleBlur;
//    HUD.backgroundColor = [UIColor colorWithWhite:0.3 alpha:0.5];
    HUD.label.text = text;
    //    HUD.contentColor = [UIColor whiteColor];
    HUD.animationType = MBProgressHUDAnimationZoomOut;
    [window addSubview:HUD];
    [HUD showAnimated:YES];
    return HUD;
}


@end
