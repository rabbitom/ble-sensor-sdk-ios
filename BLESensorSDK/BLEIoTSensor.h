//
//  BLEIoTSensor.h
//  BLESensor
//
//  Created by 郝建林 on 16/8/23.
//  Copyright © 2016年 CoolTools. All rights reserved.
//

#import "BLESDK/BLESDK.h"

@interface BLEIoTSensor : BLEDevice

@property (readonly) NSDictionary* features;
@property (readonly) BOOL isSensorOn;
@property (readonly)NSString *firmwareVersion;

- (void)turnOff;
@end
