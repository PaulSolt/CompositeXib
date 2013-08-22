//
//  WidgetView.m
//  CompositeXib
//
//  Created by Paul on 8/22/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "WidgetView.h"

@implementation WidgetView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"initWithFrame");
        
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        NSLog(@"initWithCoder");
        [self setup];      
    }
    return self;
}

- (void)setup {
    [[NSBundle mainBundle] loadNibNamed:@"WidgetView" owner:self options:nil];
    [self addSubview:self.view];

    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Width
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:200]];
    
    // Height
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100]];

}

@end
