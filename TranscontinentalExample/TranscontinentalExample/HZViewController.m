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


#pragma mark - MapView Delegates


- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    #warning Continent Mapping to be implemented
    
    self.userCoordinateLabel.text = [NSString stringWithFormat:@"%g, %g", userLocation.coordinate.latitude, userLocation.coordinate.longitude];
}


-(void)mapView:(MKMapView *)mapView didFailToLocateUserWithError:(NSError *)error
{
    UIAlertView *userLocationErrorAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                         message:@"Your location couldn't be determined"
                                                                        delegate:nil
                                                               cancelButtonTitle:@"OK"
                                                               otherButtonTitles: nil];
    
    [userLocationErrorAlertView show];
}

@end
