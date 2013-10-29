//
//  TouchingAppDelegate.h
//  Touching
//
//  Created by Andrew Garrahan on 3/3/12.
//  Copyright 2012 Gutpela. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TouchingViewController;

@interface TouchingAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TouchingViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TouchingViewController *viewController;

@end

