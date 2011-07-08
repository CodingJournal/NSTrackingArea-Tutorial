//
//  NSTrackingAreaTutorialAppDelegate.m
//  NSTrackingAreaTutorial
//
//  Created by Lucas Jenß on 7/8/11.
//  Copyright 2011 Coding Journal. All rights reserved.
//

#import "NSTrackingAreaTutorialAppDelegate.h"
#import "CJTutorialView.h"

@implementation NSTrackingAreaTutorialAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{    
    CJTutorialView * view = [[CJTutorialView alloc] init];
    [view setFrame:CGRectMake(100, 100, 100, 100)];
    [[window contentView] addSubview:view];
}

@end
