//
//  TWRViewController.m
//  TWRBorderedView
//
//  Created by Michelangelo Chasseur on 15/04/14.
//  Copyright (c) 2014 Touchware. All rights reserved.
//

#import "TWRViewController.h"
#import "TWRBorderedView.h"

@interface TWRViewController ()

@end

@implementation TWRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TWRBorderMask mask = (TWRBorderMaskBottom | TWRBorderMaskTop);
    TWRBorderedView *view1 = [[TWRBorderedView alloc] initWithFrame:CGRectMake(100, 150, 100, 100)
                                                        borderWidth:10.0f
                                                              color:[UIColor greenColor]
                                                            andMask:mask];
    view1.backgroundColor = [UIColor clearColor];
    
    TWRBorderedView *view2 = [[TWRBorderedView alloc] initWithFrame:CGRectMake(130, 200, 100, 100) borderWidth:10.0f color:[UIColor greenColor] andMask:(TWRBorderMaskBottom | TWRBorderMaskTop | TWRBorderMaskRight)];
    view2.backgroundColor = [UIColor clearColor];
    
    // Add subviews
    [self.view addSubview:view1];
    [self.view addSubview:view2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
