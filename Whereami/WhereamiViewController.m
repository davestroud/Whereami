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
        
        [locationManager setDelegate:self];
        // want to be accurate as possible regardless of power usage
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        // tells manager to search for location immediately
        [locationManager startUpdatingLocation];
    }
    return self;
}
    - (void)locationManager:(CLLocationManager *)manager
        didUpdateToLocation:(CLLocation *)newLocation
            fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
}
    
        -(void)locationManager:(CLLocationManager *)manager
                didFailWithError:(NSError *)error;
           {
               NSLog(@"Could not find location %@", error);
           }

- (void)dealloc
{
    [locationManager setDelegate:nil];
}

@end
