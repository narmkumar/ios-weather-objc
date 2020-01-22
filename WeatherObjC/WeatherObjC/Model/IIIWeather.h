//
//  IIIWeather.h
//  WeatherObjC
//
//  Created by Niranjan Kumar on 1/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IIIWeather : NSObject

@property NSString *cityName;
@property NSNumber *temp;
@property UIImage *image;

// Parsing from JSON:

- (instancetype)initWithCity:(NSString *)cityName
                        temp:(NSNumber *)temp
                       image:(UIImage *)image;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
                          cityName:(NSString *)cityname;


@end

NS_ASSUME_NONNULL_END
