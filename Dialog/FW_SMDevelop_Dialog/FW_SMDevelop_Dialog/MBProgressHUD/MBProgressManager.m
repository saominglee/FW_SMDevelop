//
//  MBProgressManager.m
//  FW_SMDevelop
//
//  Created by KUN LI on 15/3/26.
//  Copyright (c) 2015年 SMan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressManager.h"
@implementation MBProgressManager
/**
 *  显示普通加载框
 *
 *  @param msg  加载框中的文字消息
 *  @param view 加载框附着的view
 */
-(void)startLoadAnimation:(NSString *)msg parentview:(UIView *)view
{
    self.HUD = [[MBProgressHUD alloc] initWithView:view];
    //[self.navigationController.view addSubview:HUD];
    [view addSubview:self.HUD];
    
    self.HUD.dimBackground = YES;
    //HUD.color=[UIColor redColor];
    self.HUD.labelText = msg;
    // Regiser for HUD callbacks so we can remove it from the window at the right time
    self.HUD.delegate = self;
    
    [self.HUD show:YES];
}

/**
 *  移除HUD
 *
 *  @param hud HUD对象
 */
- (void)hudWasHidden:(MBProgressHUD *)hud {
    // Remove HUD from screen when the HUD was hidded
    [self.HUD removeFromSuperview];
    [self.HUD release];
    self.HUD = nil;
}
@end