//
//  ACTGradientView.m
//  ACTGradientEditor
//
//  Created by Alex on 14/09/2011.
//  Copyright 2011 ACT Productions. All rights reserved.
//

#import "ACTGradientView.h"

@implementation ACTGradientView

@synthesize gradient;
@synthesize angle;

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        self.gradient = [[NSGradient alloc] initWithStartingColor: [NSColor whiteColor] endingColor: [NSColor blackColor]];
        self.angle = 270;
    }
    
    return self;
}

- (void)drawRect: (NSRect)dirtyRect
{
    if (self.gradient) {
        [self.gradient drawInRect: [self bounds] angle: self.angle];
    }
    else {
        NSLog(@"No gradient set up for ACTGradientView: %@", self);
    }
}

- (void)setGradient: (NSGradient*)gr
{
    // Not so sure about this as for memory... (let's just say I love Garbage Collection very much :)
    if (![self.gradient isEqualTo: gr]) {
        [self.gradient release];
        gradient = [gr retain];
        
        [self setNeedsDisplay: TRUE];
    }
}
- (void)setAngle: (CGFloat)an
{
    angle = an;
    [self setNeedsDisplay: TRUE];
}

@end
