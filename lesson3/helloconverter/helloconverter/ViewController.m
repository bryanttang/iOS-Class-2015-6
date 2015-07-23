//
//  ViewController.m
//  helloconverter
//
//  Created by bryant on 9/7/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"
#import "calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    calculator *cal = [[calculator alloc] init];
    
//    double result = [cal add:11.0 :12.0];
    
    cal.result = 12.0;
    
    NSLog(@"%f", cal.result);
    
    UIView *square = [[UIView alloc] initWithFrame:CGRectMake(20, 50, 30, 30)];
    
    [self.view addSubview:square];
    
    square.backgroundColor = [UIColor redColor];

    square.center = CGPointMake(100, 200);
    
    square.layer.cornerRadius = 10.0;
    
    square.frame = CGRectMake(50, 150, 130, 70);
    
    
    UIView *square1 = [[UIView alloc] initWithFrame:CGRectMake(70, 150, 130, 70)];
    square1.backgroundColor = [UIColor blueColor];
    [self.view addSubview:square1];
    
    [self.view bringSubviewToFront:square];
    
    
}

-(BOOL) textFieldShouldBeginEditing:(UITextField *)textField{
    
    //NSLog(@"Begin Editing");
    
    //_inputbox.textColor = [UIColor blueColor];
    
    
    textField.textColor = [UIColor colorWithRed:100/255.0 green:20/255.0 blue:30/255.0 alpha:0.6];
    
    
    
    return true;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return true;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField{
    NSLog(@"asdf");
    textField.textColor = [UIColor blueColor];
    
    return true;
}





















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
