//
//  CLPlacemark+HZContinents.m
//  TranscontinentalExample
//
//  Created by Hector Zarate on 5/12/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import "CLPlacemark+HZContinents.h"
#import "HZCountryToContinentDecoder.h"


@implementation CLPlacemark (HZContinents)

-(NSString *)continent
{
    HZCountryToContinentDecoder *continentDecoder = [[HZCountryToContinentDecoder alloc] init];
    
    NSString *result = [continentDecoder continentForCountryCode:self.ISOcountryCode];
    
    return result;
}

@end
