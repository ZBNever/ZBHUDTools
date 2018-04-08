//
//  ViewController.m
//  ZBHUDTools
//
//  Created by ccpg_it on 2017/10/10.
//  Copyright © 2017年 never. All rights reserved.
//

#import "ViewController.h"
//#import "Tools.h"
#import "ZBHUDTools.h"
#import <MBProgressHUD.h>

@interface ViewController ()
{
    NSProgress *progress;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
/** 自定义图片提示 */
- (IBAction)imageHUD:(UIButton *)sender {
    MBProgressHUD *HUD = [ZBHUDTools MBProgressHUDCustomView:@"checkBox_on38" text:@"加载完成"];
    [HUD hideAnimated:YES afterDelay:1.0];
}
/** 默认加载方式 */
- (IBAction)defaultHUD:(UIButton *)sender {
    MBProgressHUD *HUD = [ZBHUDTools MBProgressHUD:@"加载中"];
    
    [HUD hideAnimated:YES afterDelay:1.0];
}
/** 仅文字提示 */
- (IBAction)textHUD:(UIButton *)sender {
    MBProgressHUD *HUD = [ZBHUDTools MBProgressHUDOnlyText:@"这是一个单纯的文字提示"];
    [HUD hideAnimated:YES afterDelay:1.0];
}
/** 进度提示 */
- (IBAction)viewHUD:(UIButton *)sender {
    progress = [NSProgress progressWithTotalUnitCount:100];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(task) userInfo:nil repeats:YES];
    MBProgressHUD *HUD = [ZBHUDTools MBProgressHUDProgress:progress text:@"加载中"];
    [HUD hideAnimated:YES afterDelay:12.0f];
    
}
///模拟加载进度
- (void)task{
    progress.completedUnitCount += 10;
}
@end
