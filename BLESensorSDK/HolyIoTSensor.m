//
//  HolyIoTSensor.m
//  BLESensorSDK
//
//  Created by 郝建林 on 2021/4/26.
//  Copyright © 2021 CoolTools. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HolyIoTSensor.h"
#import "SensorFeature.h"

@interface HolyIoTSensor()
{
    NSMutableDictionary *features;
}
@end

@implementation HolyIoTSensor

- (NSDictionary*)features {
    return features;
}

- (void)setReady {
    features = [NSMutableDictionary dictionary];
    SensorFeature *feature = [[SensorFeature alloc] initWithConfig:@{
        @"name": @"加速度",
        @"dimension": @3,
        @"valueSize": @2,
        @"valueOffset": @2,
        @"unit": @"g",
        @"precision": @2
    }];
    [features setObject:feature forKey:@"加速度"];
    [super setReady];
}

- (void)onReceiveData: (NSData*)data forProperty: (NSString*)propertyName {
    SensorFeature *feature = features[propertyName];
    if(feature != nil) {
        if([feature parseData:data])
            [self onValueChanged:feature ofProperty:propertyName];
    }
}

@end
