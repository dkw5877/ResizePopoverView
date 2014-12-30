//
//  CellContentPopoverController.m
//  ResizePopoverView
//
//  Created by user on 12/22/14.
//  Copyright (c) 2014 someCompanyNameHere. All rights reserved.
//

#import "CellContentPopoverController.h"

@implementation CellContentPopoverController

- (void)viewDidLoad{
    self.view.backgroundColor = [UIColor greenColor];

    //get the preferred size - this is set by the presenting view controller
    CGSize preferredSize = self.preferredContentSize;

    //create a label and center it horizontally, and offset the height slightly from center(up)
    UILabel* title = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, preferredSize.width/2, preferredSize.width/4)];
    title.backgroundColor = [UIColor purpleColor];
    title.text = @"Hemoglobin";
    //title.center = CGPointMake(preferredSize.width/2, preferredSize.height/2 - preferredSize.height* 0.15);
    [self.view addSubview:title];

    //create a label and center it horizontally, and offset the height slightly from center (down)
    UILabel* value = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, preferredSize.width/2, preferredSize.width/4)];
    value.backgroundColor = [UIColor orangeColor];
    value.text = @"100 mg/dL";
    //value.center = CGPointMake(preferredSize.width/2, preferredSize.height/2 + preferredSize.height*0.15);
    [self.view addSubview:value];

    [title setTranslatesAutoresizingMaskIntoConstraints:NO];
    [value setTranslatesAutoresizingMaskIntoConstraints:NO];
    //using contraints to layout subviews
    NSMutableArray* constraints = [NSMutableArray new];

    //center the title label on the x coordinate, make it from the top, and size it to 25% the views height and %50 its length
    NSLayoutConstraint* titleCenterConstraint = [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    NSLayoutConstraint* topConstraint = [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:self.view.frame.size.height*0.025];
    NSLayoutConstraint* titleHeightConstraint = [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.25 constant:0];
    NSLayoutConstraint* titleWidthConstraint = [NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:0.50 constant:0];

    //center the value label on the x coordinate, make it from the top, and size it to 25% the views height and %50 its length
    NSLayoutConstraint* valueCenterConstraint = [NSLayoutConstraint constraintWithItem:value attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    NSLayoutConstraint* bottomConstraint = [NSLayoutConstraint constraintWithItem:value attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-self.view.frame.size.height*0.025];
    NSLayoutConstraint* valueHeightConstraint = [NSLayoutConstraint constraintWithItem:value attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.25 constant:0];
    NSLayoutConstraint* valueWidthConstraint = [NSLayoutConstraint constraintWithItem:value attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:0.50 constant:0
                                                ];
    [constraints addObjectsFromArray:@[titleCenterConstraint, topConstraint, titleHeightConstraint, titleWidthConstraint,valueCenterConstraint,bottomConstraint, valueHeightConstraint, valueWidthConstraint]];
    [self.view addConstraints:constraints];
    [super updateViewConstraints];
}

//we could override the setter if we want the this view controller to determine it size
//- (CGSize)preferredContentSize
//{
//
//}
@end
