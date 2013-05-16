//
//  HZViewController.m
//  TranscontinentalExample
//
//  Created by Hector Zarate on 5/12/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import "HZViewController.h"
#import "CLPlacemark+HZContinents.h"
#import <CoreLocation/CoreLocation.h>

@interface HZViewController ()

@property (nonatomic, strong) CLGeocoder *geocoder;

-(void)displayLocationError;

@end

@implementation HZViewController

#pragma mark - Initializer

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        _geocoder = [[CLGeocoder alloc] init];
    }
    
    return self;
}

#pragma mark - View's Loading

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.mapView.delegate = self;
    self.mapView.userTrackingMode = MKUserTrackingModeNone;
}

#pragma mark - Errors

-(void)displayLocationError
{
    UIAlertView *locationErrorAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                         message:@"Your location couldn't be determined or there was an error with the Geocoder class"
                                                                        delegate:nil
                                                               cancelButtonTitle:@"OK"
                                                               otherButtonTitles: nil];
    
    [locationErrorAlertView show];
}


#pragma mark - MapView Delegate


- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    self.userCoordinateLabel.text = [NSString stringWithFormat:@"%g, %g", userLocation.coordinate.latitude, userLocation.coordinate.longitude];
    
    #warning Execute Geocoder call only once!!
    
    static BOOL geocoderInProgressLock = NO;    // there is surely a better way to implement this lock. :Pr
    
    if (!geocoderInProgressLock)
    {
        geocoderInProgressLock = YES;
        
        [self.geocoder reverseGeocodeLocation:userLocation.location
                            completionHandler:
         ^(NSArray *placemarks, NSError *error) {
             
             if (error == nil)
             {
                 NSString *continentNameForPlacemark = @"Nowhere";  // No placemarks! Nothing! Nowhere is where you live.
                 
                 if ([placemarks count] > 0)
                 {
                     CLPlacemark *anyPlacemark = [placemarks lastObject];
                     
                     continentNameForPlacemark = [anyPlacemark continent];
                 }
                 
                 self.userContinentLabel.text = continentNameForPlacemark;
                 
                 geocoderInProgressLock = NO;
             }
             else
             {
                 [self displayLocationError];
             }
         }];
    }
    
}


-(void)mapView:(MKMapView *)mapView didFailToLocateUserWithError:(NSError *)error
{
    [self displayLocationError];
}

@end
