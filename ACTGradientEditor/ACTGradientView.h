//
//  ACTGradientView.h
//  ACTGradientEditor
//
//  Created by Alex on 14/09/2011.
//  Copyright 2011 ACT Productions. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ACTGradientView : NSView
{
    NSGradient* gradient;
    CGFloat angle;
}

@property (retain) NSGradient* gradient;
@property CGFloat angle;

@end
