//
//  ViewController.m
//  DemoSwift
//
//  Created by bryant tang on 5/1/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"
#import "DemoSwift-Swift.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
    Calculator *cal = [Calculator new];
    
    
    [cal initWithOpand1:4.0 opand2:8.0];
    [cal printValue];
    [cal add];
    [cal printResult];
    
    
    [self sayGoodbye:@"Dave"];
    
    
    
    
    NSLog(@"%d", [self halfOpenRangeLength:1 :10]);
    
}



- (void)sayGoodbye:(NSString*) personName{
    NSLog(@"Goodbye, %@", personName);
}

- (int)halfOpenRangeLength:(int) start :(int)end{
    
    return end - start;
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
