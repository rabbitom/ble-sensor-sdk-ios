//
//  HolyIoTSensor.h
//  BLESensorSDK
//
//  Created by 郝建林 on 2021/4/26.
//  Copyright © 2021 CoolTools. All rights reserved.
//

#ifndef HolyIoTSensor_h
#define HolyIoTSensor_h

#import "BLESDK/BLESDK.h"

@interface HolyIoTSensor : BLEDevice

@property (readonly) NSDictionary* features;

@end

#endif /* HolyIoTSensor_h */
