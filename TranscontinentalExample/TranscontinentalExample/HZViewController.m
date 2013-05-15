//
//  HZViewController.m
//  TranscontinentalExample
//
//  Created by Hector Zarate on 5/12/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import "HZViewController.h"

@interface HZViewController ()

@end

@implementation HZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.mapView.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
