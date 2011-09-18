//
//  ACTGradientEditorAppDelegate.h
//  ACTGradientEditor
//
//  Created by Alex on 14/09/2011.
//  Copyright 2011 ACT Productions. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ACTGradientView.h"
#import "ACTGradientEditor.h"

@interface ACTGradientEditorAppDelegate : NSObject <NSApplicationDelegate>
{
    NSWindow* window;
    IBOutlet ACTGradientEditor* gradientEditor;
    IBOutlet ACTGradientView* gradientView;
    IBOutlet NSSlider* slider;
    IBOutlet NSSlider* angle;
}

@property (assign) IBOutlet NSWindow *window;

@end
