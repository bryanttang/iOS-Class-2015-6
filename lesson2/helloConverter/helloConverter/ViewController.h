//
//  ViewController.h
//  helloConverter
//
//  Created by bryant on 2/7/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *inputbox;
@property (strong, nonatomic) IBOutlet UILabel *result;


@end

