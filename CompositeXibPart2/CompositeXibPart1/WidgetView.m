//
//  WidgetView.m
//  CompositeXibPart1
//
//  Created by Paul on 8/22/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "WidgetView.h"

@implementation WidgetView

- (id)initWithFrame:(CGRect)frame
{
    NSLog(@"initWithFrame");
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    NSLog(@"initWithCoder");
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    [[NSBundle mainBundle] loadNibNamed:@"WidgetView" owner:self options:nil];
    [self addSubview:self.view];
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Our WidgetView is a UIView that contains a UIView, we need to establish
    //  the relation with autolayout. We'll want the self.view to be 200x100 pixels
    //  and we'll have the superview (WidgetView) stick to the edges (i.e. same size).
    
    // width and edges   H:|[self.view(200)]|
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_view(200)]|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:NSDictionaryOfVariableBindings(_view, self)]];
    
    // height and edges   V:|[self.view(100)]|
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_view(100)]|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:NSDictionaryOfVariableBindings(_view, self)]];
}

@end
