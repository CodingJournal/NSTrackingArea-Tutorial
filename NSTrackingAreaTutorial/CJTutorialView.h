//
//  CJTutorialView.h
//  NSTrackingAreaTutorial
//
//  Created by Lucas Jenß on 7/8/11.
//  Copyright 2011 Coding Journal. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface CJTutorialView : NSView {
@private
    NSTrackingArea * trackingArea;
}

-(void)resizeFrameBy:(int)value;

@end
