//
//  ViewController.m
//  IosRawGps
//
//  Created by Valtoni on 8/7/12.
//  Copyright (c) 2012 vafeb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CLController = [[CoreLocationController alloc] init];
    CLController.delegate = self;
    [CLController.locMgr startUpdatingLocation];
}

- (void)locationUpdate:(CLLocation *)location {
    locLabel.text = [location description];
}

- (void)locationError:(NSError *)error {
    locLabel.text = [error description];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    //[CLController release];
    //[super dealloc];
}

@end
