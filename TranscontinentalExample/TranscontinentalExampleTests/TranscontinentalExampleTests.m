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

const NSTimeInterval kTimeoutInterval = 30.0;   // unit: s

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
    __block CLPlacemark *placeMarkOne = nil;
    
    [self.geocoder geocodeAddressString:testOne
                      completionHandler:^(NSArray *placemarks, NSError *error) {

                          if ([placemarks count] > 0)
                          {
                              placeMarkOne = placemarks[0];
                          }
                          self.asynOperationFinished = YES;
                          
                      }];
    
    [self waitForCompletion:kTimeoutInterval];
    
    STAssertEqualObjects([placeMarkOne continent], expectedContinentForTestOne, @"Test One (Asia) failed to assert continent correctly");
}



- (BOOL)waitForCompletion:(NSTimeInterval)paramTimeoutInSeconds
{
    NSDate *timeoutDate = [NSDate dateWithTimeIntervalSinceNow:paramTimeoutInSeconds];
    
    do
    {
        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:timeoutDate];
        
        if([timeoutDate timeIntervalSinceNow] <= 0.0)
        {
            break;
        }
    }
    while (![self isAsynOperationFinished]);
    
    return [self isAsynOperationFinished];
}
@end
