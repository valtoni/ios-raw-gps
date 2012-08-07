//
//  CoreLocationController.h
//  IosRawGps
//
//  Created by Valtoni on 8/7/12.
//  Copyright (c) 2012 vafeb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface CoreLocationController : NSObject <CLLocationManagerDelegate> {
    CLLocationManager *locMgr;
    id delegate;
}

@property (nonatomic, retain) CLLocationManager *locMgr;
@property (nonatomic, assign) id delegate;

@end


@protocol CoreLocationControllerDelegate
@required
- (void)locationUpdate:(CLLocation *) location;  // Update are send here
- (void)locationError:(NSError *)error; // Errors are send here

@end
