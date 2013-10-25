//
//  WhereamiViewController.m
//  Whereami
//
//  Created by DAVID STROUD on 10/25/13.
//  Copyright (c) 2013 Grey Matter. All rights reserved.
//

#import "WhereamiViewController.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // create location manager object
        locationManager = [[CLLocationManager alloc]init];
        // want to be accurate as possible regardless of power usage
        [locationManager setDelegate:self];
        
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        // tells manager to search for location immediately
        [locationManager startUpdatingLocation];
    }
    return self;
}

@end
