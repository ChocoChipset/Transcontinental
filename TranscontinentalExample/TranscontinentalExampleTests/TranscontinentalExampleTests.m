//
//  TranscontinentalExampleTests.m
//  TranscontinentalExampleTests
//
//  Created by Hector Zarate on 5/12/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import "TranscontinentalExampleTests.h"
#import <CoreLocation/CoreLocation.h>
#import "CLPlacemark+HZContinents.h"

@implementation TranscontinentalExampleTests

- (void)setUp
{
    [super setUp];
    
    self.geocoder = [[CLGeocoder alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testAsiaPlacemark
{
    NSString *testOne = @"Tokyo Tree, Japan";
    NSString * const expectedContinentForTestOne = @"Asia";
    
    [self.geocoder geocodeAddressString:testOne
                      completionHandler:^(NSArray *placemarks, NSError *error) {
                          
                          CLPlacemark *placeMarkOne = nil;
                          
                          if ([placemarks count] > 0)
                          {
                              placeMarkOne = placemarks[0];
                          }
                          
                          STAssertEqualObjects([placeMarkOne continent], expectedContinentForTestOne, @"Test One (Asia) failed to assert continent correctly");
                          
                      }];
}

@end
