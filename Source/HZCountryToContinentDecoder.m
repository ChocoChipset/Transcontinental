//
//  HZCountryToContinentDecoder.m
//  TranscontinentalExample
//
//  Created by Hector Zarate on 5/12/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import "HZCountryToContinentDecoder.h"


#pragma mark - Constants

NSString * const kContinentNameAfrica       = @"Africa";
NSString * const kContinentNameAmerica      = @"America";
NSString * const kContinentNameAsia         = @"Asia";
NSString * const kContinentNameAustralia    = @"Australia";
NSString * const kContinentNameEurope       = @"Europe";

#pragma mark -

@implementation HZCountryToContinentDecoder


-(NSString *)continentForCountryCode:(NSString *)paramCountryISOCode
{
    #warning Instance method not implemented
    
    return nil;
}


#pragma mark - Class Methods


+(NSArray *)allContinents
{
    static NSArray *result = nil;
    
    if (!result)
    {
        result = @[kContinentNameAfrica, kContinentNameAmerica, kContinentNameAsia, kContinentNameAustralia, kContinentNameEurope];
    }
    
    return result;
}



@end
