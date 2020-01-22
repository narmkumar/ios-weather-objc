//
//  IIIWeather.m
//  WeatherObjC
//
//  Created by Niranjan Kumar on 1/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "IIIWeather.h"

@implementation IIIWeather

- (instancetype)initWithCity:(NSString *)cityName temp:(NSNumber *)temp image:(UIImage *)image {
    self = [self init];
    if (self != nil) {
        _cityName = cityName;
        _temp = temp;
        _image = image;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary cityName:(NSString *)cityname {
        NSDictionary *main = dictionary[@"main"];
        NSNumber *temp = main[@"temp"];
        
        NSArray *weatherDictionaries = dictionary[@"weather"];
        NSString *imageIcon = nil;
        
        for (NSDictionary *weatherDictionary in weatherDictionaries) {
            imageIcon = weatherDictionary[@"icon"];
        }
        
        UIImage *image = [UIImage imageNamed:imageIcon];
    
        
    return [self initWithCity:cityname temp:temp image:image];
    }

@end
