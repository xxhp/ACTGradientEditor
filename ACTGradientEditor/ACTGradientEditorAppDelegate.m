//
//  ACTGradientEditorAppDelegate.m
//  ACTGradientEditor
//
//  Created by Alex on 14/09/2011.
//  Copyright 2011 ACT Productions. All rights reserved.
//

#import "ACTGradientEditorAppDelegate.h"

@implementation ACTGradientEditorAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [gradientEditor setTarget: self];
    [gradientEditor setAction: @selector(gradientChanged:)];
    
    [self gradientChanged: self];
}

- (IBAction)gradientChanged: (id)sender
{
    //[gradientEditor setGradientHeight: [slider doubleValue]];
    [gradientView setGradient: [gradientEditor gradient]];
    [gradientView setAngle: [angle doubleValue]];
}

@end
