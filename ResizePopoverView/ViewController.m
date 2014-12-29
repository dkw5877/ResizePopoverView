//
//  ViewController.m
//  ResizePopoverView
//
//  Created by user on 12/22/14.
//  Copyright (c) 2014 someCompanyNameHere. All rights reserved.
//

#import "ViewController.h"
#import "CellContentPopoverController.h"

@interface ViewController () < UICollectionViewDataSource, UICollectionViewDelegate >
@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myCollectionView.frame = self.view.bounds;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellID" forIndexPath:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    CellContentPopoverController* content = [[CellContentPopoverController alloc]init];
    content.preferredContentSize = CGSizeMake(200, 200);
    UIPopoverController* displayController = [[UIPopoverController alloc]initWithContentViewController:content];
    CGRect frame = [[collectionView cellForItemAtIndexPath:indexPath] frame];
    //displayController.popoverContentSize = CGSizeMake(200, 200);
    [displayController presentPopoverFromRect:frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];

}
@end
