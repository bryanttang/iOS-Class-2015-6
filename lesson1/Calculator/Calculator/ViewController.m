//
//  ViewController.m
//  Calculator
//
//  Created by bryant tang on 6/25/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickOne:(id)sender {
    _display.text = [_display.text stringByAppendingString:@"1"];
    
}
- (IBAction)clickTwo:(id)sender {
    _display.text = [_display.text stringByAppendingString:@"2"];
}


- (IBAction)clickAdd:(id)sender {
    
    store = [_display.text intValue];
    _display.text = @"";
    
}

- (IBAction)clickEquel:(id)sender {
    
    int result = store + [_display.text intValue];
    
    _display.text = [NSString stringWithFormat:@"%d",result];
    
}
































@end
