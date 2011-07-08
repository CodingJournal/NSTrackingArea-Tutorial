//
//  NSTrackingAreaTutorialAppDelegate.h
//  NSTrackingAreaTutorial
//
//  Created by Lucas Jenß on 7/8/11.
//  Copyright 2011 Coding Journal. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSTrackingAreaTutorialAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
