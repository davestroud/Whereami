//
//  WhereamiViewController.h
//  Whereami
//
//  Created by DAVID STROUD on 10/25/13.
//  Copyright (c) 2013 Grey Matter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>   

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate>
{   //added instance variable to hold a pointer to an instance of CLLocationManager
    CLLocationManager *locationManager;
}

@end
