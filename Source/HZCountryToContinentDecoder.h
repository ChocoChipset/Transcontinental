//
//  HZCountryToContinentDecoder.h
//  TranscontinentalExample
//
//  Created by Hector Zarate on 5/12/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface HZCountryToContinentDecoder : NSObject

+(NSArray *)allContinents;
-(NSString *)continentForCountryCode:(NSString *)paramCountryISOCode;

@end