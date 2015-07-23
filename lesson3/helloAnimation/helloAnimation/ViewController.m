//
//  ViewController.m
//  helloAnimation
//
//  Created by bryant on 16/7/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *square = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 40, 40)];
    
    square.backgroundColor = [UIColor redColor];
    [self.view addSubview:square];
    
    
    
//    [UIView animateWithDuration:2 animations:^{
//        CGRect frame = square.frame;
//        frame.origin.x = 110;
//        square.frame = frame;
//
//        
//    }];
    
    //Step One
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        CGRect frame = square.frame;
        frame.origin.y = 210;
        square.frame = frame;
        
    } completion:^(BOOL finished) {
        
        
        //Step Two
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            
            CGRect frame = square.frame;
            frame.origin.x = 210;
            square.frame = frame;
            
        } completion:^(BOOL finished) {
            
            square.backgroundColor = [UIColor blueColor];
            
        }];
        
    }];
    
    
//    [UIView animateWithDuration:2 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:10 options:UIViewAnimationOptionCurveEaseIn animations:^{
//        
//        CGRect frame = square.frame;
//        frame.origin.y = 210;
//        square.frame = frame;
//        
//    } completion:^(BOOL finished) {
//        square.backgroundColor = [UIColor blueColor];
//    }];
    
}

- (void) stepTwo{

    

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
