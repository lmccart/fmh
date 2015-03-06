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
@property (retain, nonatomic) IBOutlet UILabel *hrBattery;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // Create the colors
    UIColor *topColor = [UIColor colorWithRed:255.0/255.0 green:115.0/255.0 blue:214.0/255.0 alpha:1.0];
    UIColor *bottomColor = [UIColor colorWithRed:251.0/255.0 green:222.0/255.0 blue:255.0/255.0 alpha:1.0];
    
    // Create the gradient
    CAGradientLayer *theViewGradient = [CAGradientLayer layer];
    theViewGradient.colors = [NSArray arrayWithObjects: (id)topColor.CGColor, (id)bottomColor.CGColor, nil];
    theViewGradient.frame = self.view.bounds;
    
    //Add gradient to view
    [self.view.layer insertSublayer:theViewGradient atIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateMonitorStatus:(BOOL)status {
    [self.monitorStatusIcon setHidden:!status];
    [self.hrBattery setHidden:!status];
    NSLog(@"show");
}

- (void)updateMonitorBatteryLevel:(float)level {
    [self.hrBattery setText:[NSString stringWithFormat:@"%d%%", (int)(100*level)]];
}

- (void)updateHeartRate:(int)hr {
    [self.hrLabel setText:[NSString stringWithFormat:@"%d", hr]];
}


@end
