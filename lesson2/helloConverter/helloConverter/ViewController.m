//
//  ViewController.m
//  helloConverter
//
//  Created by bryant on 2/7/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    NSString *result = @"MOP : 1.2";

//    NSString *result2 = [NSString stringWithFormat:@"MOP : %.2f %@", 1.234, @" ~good!"];
//    
//    
//    
//    NSLog(@"%@", result2);
    
    
}


- (IBAction)clickConvert:(id)sender {
//    NSLog(@"click Convert");
    
    [self convertToMOP];
    
    _inputbox.textColor = [UIColor blackColor];
    
    
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;   // return NO to not change text
{
    
//    NSLog(@"%@",string);
//    _result.text = [_result.text stringByAppendingString:string];
    
    
    textField.text = [[textField.text stringByAppendingString:string] uppercaseString];

    

    return true;
}


-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
     textField.textColor = [UIColor blackColor];
    return true;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    [self convertToMOP];
    
    return true;
}


-(void)convertToMOP{
    float input =  _inputbox.text.floatValue;
    float result_f = input * 7.9;
    _result.text = [NSString stringWithFormat:@"MOP : %f", result_f];

}











- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    textField.textColor = [UIColor redColor];

    return true;
}




























- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
