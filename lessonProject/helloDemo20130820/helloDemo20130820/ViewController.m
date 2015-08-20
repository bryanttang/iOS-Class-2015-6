//
//  ViewController.m
//  helloDemo20130820
//
//  Created by bryant on 20/8/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self getImageData];

    
    

}

- (void)viewWillAppear:(BOOL)animated{
    [self  getJsonData];
}

- (void)viewDidAppear:(BOOL)animated{
    
}


- (void)viewWillDisappear:(BOOL)animated{
}




- (void) getJsonData{

    NSURL *json_url = [NSURL URLWithString:@"http://52.6.19.49/mission_cpttm/mission.php"];
    NSData *json_data = [NSData dataWithContentsOfURL:json_url];
    
    NSJSONSerialization *json = [NSJSONSerialization JSONObjectWithData:json_data options:NSJSONReadingMutableLeaves error:nil];
    
    
    NSDictionary *data = (NSDictionary*)json;
    
    NSArray *missions = (NSArray*)[data objectForKey:@"data"];
    
    NSLog(@"%@", missions);
    
    _json_text.text = [NSString stringWithFormat:@"%@", missions];

}


- (void) getImageData{
    NSURL *img_url = [NSURL URLWithString:@"https://cdn4.iconfinder.com/data/icons/ironmanvi_lin/256/ironman_III.png"];
    NSData *img_data = [NSData dataWithContentsOfURL:img_url];

    _img.image = [UIImage imageWithData:img_data];
}












- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
