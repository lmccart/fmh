//
//  ViewController.m
//  fmh
//
//  Created by Lauren McCarthy on 2/11/15.
//  Copyright (c) 2015 Lauren McCarthy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (retain, nonatomic) IBOutlet UIImageView *monitorStatusIcon;
@property (retain, nonatomic) IBOutlet UILabel *hrLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateMonitorStatus:(BOOL)status {
    [self.monitorStatusIcon setHidden:!status];
}

- (void)updateMonitorBatteryLevel:(float)level {
    [self.monitorStatusIcon setAlpha:level];
}

- (void)updateHeartRate:(int)hr {
    [self.hrLabel setText:[NSString stringWithFormat:@"%d", hr]];
}


@end
