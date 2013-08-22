//
//  ViewController.m
//  CompositeXibPart1
//
//  Created by Paul on 8/22/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "ViewController.h"
#import "WidgetView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    WidgetView *widget = [[WidgetView alloc] init];
    //    widget.center = CGPointMake(200, 400);  // pre-autolayout code, don't use
    widget.translatesAutoresizingMaskIntoConstraints = NO;

        // Centered
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:widget attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    
        // Bottom edge of the iPhone
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:widget attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0]];

    // Bottom edge of the first widget (play with constant to offset by x pixels)
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:widget attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.widget attribute:NSLayoutAttributeBottom multiplier:1.0 constant:8]];

    
    [self.view addSubview:widget];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
