//
//  ViewController.m
//  CompositeXib
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

    // Load a new widget
    
    WidgetView *widget = [[WidgetView alloc] init];
    [self.view addSubview:widget];
    widget.translatesAutoresizingMaskIntoConstraints = NO;
    
    // center x
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:widget attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    
    // hug the bottom

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:widget attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0]];
    
    // hug the bottom of the top widget, play with constant to move down/up
    
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:widget attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.widget1 attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0]];

    
    // Width
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:widget attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:200]];
    
    // Height
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:widget attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
