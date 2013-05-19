//
//  HZCountryToContinentDecoder.m
//  TranscontinentalExample
//
//  Created by Hector Zarate on 5/12/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import "HZCountryToContinentDecoder.h"


#pragma mark Constants

NSString * const kContinentNameAfrica   = @"Africa";
NSString * const kContinentNameAmerica  = @"America";
NSString * const kContinentNameAsia   = @"Asia";
NSString * const kContinentNameAustralia  = @"Australia";
NSString * const kContinentNameEurope   = @"Europe";


#pragma mark - NSArray+RepeatingObjects Header

@interface NSArray (RepeatingObjects)
+(NSArray *)arrayContainingObject:(NSString *)paramKey numberOfTimes:(NSUInteger)paramNumberOfTimes;
@end


#pragma mark - Decoder Implementation

@implementation HZCountryToContinentDecoder


-(NSString *)continentForCountryCode:(NSString *)paramCountryISOCode
{
    if (paramCountryISOCode == nil)
    {
        return nil;
    }
    
    NSArray * const countriesInAfrica   = @[ @"BF", @"BI", @"BJ", @"BW", @"CD", @"CF", @"CG", @"CI", @"CM",
                                             @"CV", @"DJ", @"DZ", @"EG", @"EH", @"ER", @"ET", @"GA", @"GH",
                                             @"GM", @"GN", @"GQ", @"GW", @"KE", @"KM", @"LR", @"LS", @"LY",
                                             @"MA", @"MG", @"ML", @"MR", @"MU", @"MW", @"MZ", @"NA", @"NE",
                                             @"NG", @"RE", @"RW", @"SC", @"SD", @"SH", @"SL", @"SN", @"SO",
                                             @"ST", @"SZ", @"TD", @"TG", @"TN", @"TZ", @"UG", @"YT", @"ZA",
                                             @"ZM", @"ZW" ];
    NSArray *const countriesInAmerica   = @[ @"AG", @"AI", @"AN", @"AR", @"AW", @"BB", @"BL", @"BM", @"BO",
                                             @"BR", @"BS", @"BZ", @"CA", @"CL", @"CO", @"CR", @"CU", @"DM",
                                             @"DO", @"EC", @"FK", @"GD", @"GF", @"GL", @"GP", @"GT", @"GY",
                                             @"HN", @"HT", @"JM", @"KN", @"KY", @"LC", @"MF", @"MQ", @"MS",
                                             @"MX", @"NI", @"PA", @"PE", @"PM", @"PR", @"PY", @"SR", @"SV",
                                             @"TC", @"TT", @"US", @"UY", @"VC", @"VE", @"VG", @"VI" ];
    NSArray *const countriesInAsia      = @[ @"AE", @"AF", @"AM", @"AP", @"AZ", @"BD", @"BH", @"BN", @"BT",
                                             @"CC", @"CN", @"CX", @"CY", @"GE", @"HK", @"ID", @"IL", @"IN",
                                             @"IO", @"IQ", @"IR", @"JO", @"JP", @"KG", @"KH", @"KP", @"KR",
                                             @"KW", @"KZ", @"LA", @"LB", @"LK", @"MM", @"MN", @"MO", @"MV",
                                             @"MY", @"NP", @"OM", @"PH", @"PK", @"PS", @"QA", @"SA", @"SG",
                                             @"SY", @"TH", @"TJ", @"TL", @"TM", @"TW", @"UZ", @"VN", @"YE" ];
    NSArray *const countriesInAustralia = @[ @"AS", @"AU", @"CK", @"FJ", @"FM", @"GU", @"KI", @"MH", @"MP",
                                             @"NC", @"NF", @"NR", @"NU", @"NZ", @"PF", @"PG", @"PN", @"PW",
                                             @"SB", @"TK", @"TO", @"TV", @"UM", @"VU", @"WF", @"WS" ];
    NSArray *const countriesInEurope    = @[ @"AD", @"AL", @"AT", @"AX", @"BA", @"BE", @"BG", @"BY", @"CH",
                                             @"CZ", @"DE", @"DK", @"EE", @"ES", @"EU", @"FI", @"FO", @"FR",
                                             @"FX", @"GB", @"GG", @"GI", @"GR", @"HR", @"HU", @"IE", @"IM",
                                             @"IS", @"IT", @"JE", @"LI", @"LT", @"LU", @"LV", @"MC", @"MD",
                                             @"ME", @"MK", @"MT", @"NL", @"NO", @"PL", @"PT", @"RO", @"RS",
                                             @"RU", @"SE", @"SI", @"SJ", @"SK", @"SM", @"TR", @"UA", @"VA" ];
  
    NSArray *objectsForAfrica      = [NSArray arrayContainingObject:kContinentNameAfrica
                                                      numberOfTimes:[countriesInAfrica count]];
    NSArray *objectsForAmerica     = [NSArray arrayContainingObject:kContinentNameAmerica
                                                      numberOfTimes:[countriesInAmerica count]];
    NSArray *objectsForAsia        = [NSArray arrayContainingObject:kContinentNameAsia
                                                      numberOfTimes:[countriesInAsia count]];
    NSArray *objectsForAustralia   = [NSArray arrayContainingObject:kContinentNameAustralia
                                                      numberOfTimes:[countriesInAustralia count]];
    NSArray *objectsForEurope      = [NSArray arrayContainingObject:kContinentNameEurope
                                                      numberOfTimes:[countriesInEurope count]];
    
    NSDictionary *dictionaryForAfrica       = [NSDictionary dictionaryWithObjects:objectsForAfrica
                                                                          forKeys:countriesInAfrica];
    NSDictionary *dictionaryForAmerica      = [NSDictionary dictionaryWithObjects:objectsForAmerica
                                                                          forKeys:countriesInAmerica];
    NSDictionary *dictionaryForAsia         = [NSDictionary dictionaryWithObjects:objectsForAsia
                                                                          forKeys:countriesInAsia];
    NSDictionary *dictionaryForAustralia    = [NSDictionary dictionaryWithObjects:objectsForAustralia
                                                                          forKeys:countriesInAustralia];
    NSDictionary *dictionaryForEurope       = [NSDictionary dictionaryWithObjects:objectsForEurope
                                                                          forKeys:countriesInEurope];
    
    NSDictionary *countryCodeToContinentMap = [NSMutableDictionary dictionary];
    [countryCodeToContinentMap setValuesForKeysWithDictionary:dictionaryForAfrica];
    [countryCodeToContinentMap setValuesForKeysWithDictionary:dictionaryForAmerica];
    [countryCodeToContinentMap setValuesForKeysWithDictionary:dictionaryForAsia];
    [countryCodeToContinentMap setValuesForKeysWithDictionary:dictionaryForAustralia];
    [countryCodeToContinentMap setValuesForKeysWithDictionary:dictionaryForEurope];
    
    NSString *result = [countryCodeToContinentMap objectForKey:[paramCountryISOCode uppercaseString]];    // mapping
    
    return result;
}


#pragma mark - Class Methods


+(NSArray *)allContinents
{
    static NSArray *result = nil;
    
    if (!result)
    {
        result = @[kContinentNameAfrica, kContinentNameAmerica, kContinentNameAsia,
                   kContinentNameAustralia, kContinentNameEurope];
    }
    
    return result;
}

@end


#pragma mark - NSArray+RepeatingObjects Implementation

/* Maintaing NSArray category in this .m file to facilitate import of Source into other projects. */

@implementation NSArray (RepeatingObjects)

+(NSArray *)arrayContainingObject:(NSString *)paramKey numberOfTimes:(NSUInteger)paramNumberOfTimes
{
    if (paramKey == nil)
    {
        return nil;
    }
    
    NSMutableArray *keysMutableArray = [NSMutableArray array];
    
    for (NSUInteger indexArraySize = 0; indexArraySize < paramNumberOfTimes; ++indexArraySize)
    {
        [keysMutableArray addObject:paramKey];
    }
    
    return [NSArray arrayWithArray:keysMutableArray];
}

@end
