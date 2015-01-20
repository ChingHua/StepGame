//
//  AppDelegate.h
//  StepGame
//
//  Created by ChingHua on 2015/1/19.
//  Copyright (c) 2015年 NoPay. All rights reserved.
//

#import <UIKit/UIKit.h>
//import Parse framework
#import <Parse/Parse.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (weak, nonatomic) UILocalNotification *notify;
-(void)ReOderBadgeNumber;

@end

