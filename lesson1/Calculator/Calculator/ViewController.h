//
//  ViewController.h
//  Calculator
//
//  Created by bryant tang on 6/25/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int store;

}
@property (strong, nonatomic) IBOutlet UITextField *display;
@property (strong, nonatomic) IBOutlet UIButton *twoButton;

@end

