//
//  ViewController.h
//  fmh
//
//  Created by Lauren McCarthy on 2/11/15.
//  Copyright (c) 2015 Lauren McCarthy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (void)updateMonitorStatus:(BOOL)status;
- (void)updateMonitorBatteryLevel:(float)level;
- (void)updateHeartRate:(int)hr;

@end

