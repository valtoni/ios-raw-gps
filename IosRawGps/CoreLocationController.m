//
//  CoreLocationController.m
//  IosRawGps
//
//  Created by Valtoni on 8/7/12.
//  Copyright (c) 2012 vafeb. All rights reserved.
//

#import "CoreLocationController.h"
#import <CoreLocation/CoreLocation.h>

@implementation CoreLocationController

-(id)init {
    self = [super init];
    
    if (self != nil) {
        self.locMgr = [[CLLocationManager alloc] init];
        self.locMgr.delegate = self;
    }
    
    return self;
}

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    if ([self.delegate conformsToProtocol:@protocol(CoreLocationControllerDelegate)]) {
        [self.delegate locationUpdate:newLocation];
    }
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    if ([self.delegate conformsToProtocol:@protocol(CoreLocationControllerDelegate)]) {
        [self.delegate locationError:error];
    }
    
}

-(void)dealloc {
    // Estes objetos não são necessários pois o projeto está no modo automático
    // [self.locMgr release];
    // [super dealloc];
}


@end

