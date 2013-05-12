//
//  TranscontinentalExampleTests.h
//  TranscontinentalExampleTests
//
//  Created by Hector Zarate on 5/12/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@class CLGeocoder;

@interface TranscontinentalExampleTests : SenTestCase

@property (nonatomic, strong) CLGeocoder *geocoder;
@property (nonatomic, unsafe_unretained, getter = isAsynOperationFinished) BOOL asynOperationFinished;
@end
