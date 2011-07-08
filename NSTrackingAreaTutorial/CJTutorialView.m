//
//  CJTutorialView.m
//  NSTrackingAreaTutorial
//
//  Created by Lucas Jenß on 7/8/11.
//  Copyright 2011 Coding Journal. All rights reserved.
//

#import "CJTutorialView.h"


@implementation CJTutorialView

-(void)updateTrackingAreas
{
    if(trackingArea != nil) {
        [self removeTrackingArea:trackingArea];
        [trackingArea release];
    }
    
    int opts = (NSTrackingMouseEnteredAndExited | NSTrackingActiveAlways);
    trackingArea = [ [NSTrackingArea alloc] initWithRect:[self bounds]
                                            options:opts
                                            owner:self
                                            userInfo:nil];
    [self addTrackingArea:trackingArea];
}

-(void)mouseEntered:(NSEvent *)theEvent
{
    [self resizeFrameBy:+100];
}

-(void)mouseExited:(NSEvent *)theEvent
{
    [self resizeFrameBy:-100];
}

-(void)resizeFrameBy:(int)value
{
    NSRect frame = [self frame];
    [self setFrame:CGRectMake(frame.origin.x, 
                              frame.origin.x,
                              frame.size.width + value, 
                              frame.size.height + value
                            )];
}

- (void)dealloc
{
    [trackingArea release];
    [super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect
{
    [[NSColor redColor] set];
    NSRectFill([self bounds]);
}

@end
