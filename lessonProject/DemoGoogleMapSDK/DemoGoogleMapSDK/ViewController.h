//
//  ViewController.h
//  DemoGoogleMapSDK
//
//  Created by bryant on 6/8/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate, UIAlertViewDelegate >
{
    CLLocationManager *locationManager;
    NSTimer *timer;

}
@property (strong,nonatomic) IBOutlet UILabel *numbers;

@end

