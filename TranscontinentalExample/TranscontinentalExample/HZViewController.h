//
//  HZViewController.h
//  TranscontinentalExample
//
//  Created by Hector Zarate on 5/12/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface HZViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (weak, nonatomic) IBOutlet UILabel *userContinentLabel;
@property (weak, nonatomic) IBOutlet UILabel *userCoordinateLabel;

@end
