//
//  AppDelegate.h
//  fmh
//
//  Created by Lauren McCarthy on 2/11/15.
//  Copyright (c) 2015 Lauren McCarthy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@property NSDate *lastAlertTime;
- (void) triggerNotification:(NSString *)type;

- (void)sendHeartRate:(int)hr;

@end

