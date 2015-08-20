//
//  ViewController.m
//  DemoGoogleMapSDK
//
//  Created by bryant on 6/8/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"
@import GoogleMaps;

@interface ViewController ()

@end

@implementation ViewController{
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    //#######  Setup a timer  #######
    timer =  [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateNumber:) userInfo:nil repeats:YES];
    
    
    
    
    //#######  Setup alert  #######
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert!"
                                                    message:@"Hello every!"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"YES", nil];
    
    [alert show];
        
    
    //#######  Setup a location manager  #######
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.distanceFilter = 0.3;
    
    [locationManager startUpdatingLocation];
    

    
    //#######  Setup Google map   #######
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                            longitude:151.20
                                                                 zoom:10];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    
    
    mapView_.frame = CGRectMake(0, 0, self.view.frame.size.width, 200);
    [self.view addSubview:mapView_];
    
    [UIView animateWithDuration:4.0 animations:^{
        mapView_.transform = CGAffineTransformMakeTranslation(0, 100);
    } completion:^(BOOL finished) {
        
    }];
    
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView_;
    
   
//    GMSMutablePath *path = [GMSMutablePath path];
//    [path addCoordinate:CLLocationCoordinate2DMake(-33.90, 151.00)];
//    [path addCoordinate:CLLocationCoordinate2DMake(-33.90, 151.40)];
//    [path addCoordinate:CLLocationCoordinate2DMake(-33.70, 151.40)];
//    [path addCoordinate:CLLocationCoordinate2DMake(-33.70, 151.00)];
//    [path addCoordinate:CLLocationCoordinate2DMake(-33.90, 151.00)];
//    
//    GMSPolyline *rectangle = [GMSPolyline polylineWithPath:path];
//    rectangle.map = mapView_;
//    
//    
//    mapView_.settings.consumesGesturesInView = NO;
//    
//    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToLongPress:)];
//    
//    [mapView_ addGestureRecognizer:longPress];
    
    
}

#pragma mark - NSTimer delegate
- (void)updateNumber:(id)sender{
    int number = _numbers.text.intValue+1;
    
    _numbers.text = [NSString stringWithFormat:@"%d",number];
    NSLog(@"hello");

}


#pragma mark - Location Manager delegate
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    
    CLLocation *location = [locations lastObject];
    
    //Print my location
    NSLog(@"lat: %f, lon: %f", location.coordinate.latitude, location.coordinate.longitude);
    
    //Reset the map camera
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:location.coordinate.latitude
                                                            longitude:location.coordinate.longitude
                                                                 zoom:13];
    mapView_.camera = camera;


}


#pragma mark - Alert View Delegate
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            [timer invalidate];
            break;
        case 1:
            {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Message" message:@"Hello, budy!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
                alert.alertViewStyle = UIAlertViewStylePlainTextInput;
                [alert show];
            break;
            }
        default:
            break;
    }

}

#pragma mark - LongPress Responds
- (void) respondsToLongPress:(UILongPressGestureRecognizer*) recoginzer{

    if (recoginzer.state == UIGestureRecognizerStateBegan) {
        CGPoint finger_point = [recoginzer locationInView:mapView_];
        CLLocationCoordinate2D finger_coord = [mapView_.projection coordinateForPoint: finger_point];
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = finger_coord;   //CLLocationCoordinate2DMake(-33.86, 151.20);
        marker.title = @"Me";
        marker.snippet = @"Hey!";
        marker.map = mapView_;
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    

}

@end
