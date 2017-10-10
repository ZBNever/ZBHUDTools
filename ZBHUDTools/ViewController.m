//
//  ViewController.m
//  ZBHUDTools
//
//  Created by ccpg_it on 2017/10/10.
//  Copyright © 2017年 never. All rights reserved.
//

#import "ViewController.h"
#import "Tools.h"
#import <MBProgressHUD.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)imageHUD:(UIButton *)sender {
    MBProgressHUD *HUD = [Tools MBProgressHUDCustomView:@"加载中"];
    [HUD hideAnimated:YES afterDelay:1.0];
}

- (IBAction)defaultHUD:(UIButton *)sender {
    MBProgressHUD *HUD = [Tools MBProgressHUD:@"加载中"];
    [HUD hideAnimated:YES afterDelay:1.0];
}

- (IBAction)textHUD:(UIButton *)sender {
    MBProgressHUD *HUD = [Tools MBProgressHUDOnlyText:@"加载中"];
    [HUD hideAnimated:YES afterDelay:1.0];
}

- (IBAction)viewHUD:(UIButton *)sender {
    MBProgressHUD *HUD = [Tools MBProgressHUDProgress:@"加载中"];
    [HUD hideAnimated:YES afterDelay:1.0];
}

@end
