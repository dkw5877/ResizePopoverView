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
    title.center = CGPointMake(preferredSize.width/2, preferredSize.height/2 - preferredSize.height* 0.15);
    [self.view addSubview:title];

    //create a label and center it horizontally, and offset the height slightly from center (down)
    UILabel* value = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, preferredSize.width/2, preferredSize.width/4)];
    value.backgroundColor = [UIColor orangeColor];
    value.text = @"100 mg/dL";
    value.center = CGPointMake(preferredSize.width/2, preferredSize.height/2 + preferredSize.height*0.15);
    [self.view addSubview:value];

    //using contraints to layout subviews
//    NSMutableArray* constraints = [NSMutableArray new];
//    [constraints addObject:[NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100.0]];
//    [constraints addObject:[NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:50.0]];
//
//    [constraints addObject:[NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:1.0]];
//
//    [constraints addObject:[NSLayoutConstraint constraintWithItem:title attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:10.0]];
//    [self.view addConstraints:constraints];

}

//we could override the setter if we want the this view controller to determine it size
//- (CGSize)preferredContentSize
//{
//
//}
@end
