//
//  MBProgressManager.h
//  FW_SMDevelop
//
//  Created by KUN LI on 15/3/26.
//  Copyright (c) 2015年 SMan. All rights reserved.
//

#ifndef FW_SMDevelop_MBProgressManager_h
#define FW_SMDevelop_MBProgressManager_h
#endif
#import "MBProgressHUD.h"
@interface MBProgressManager : NSObject<MBProgressHUDDelegate> {
}

@property(nonatomic, strong) MBProgressHUD* HUD;

- (void)startLoadAnimation:(NSString*)msg parentview:(UIView*)view;

@end