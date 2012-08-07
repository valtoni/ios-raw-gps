//
//  ViewController.h
//  IosRawGps
//
//  Created by Valtoni on 8/7/12.
//  Copyright (c) 2012 vafeb. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CoreLocationController.h"

@interface ViewController : UIViewController <CoreLocationControllerDelegate> {
    CoreLocationController *CLController;
    IBOutlet UILabel *locLabel;
}

@property (nonatomic, retain) CoreLocationController *CLController;

@end
