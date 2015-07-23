//
//  ViewController.m
//  helloArrow
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
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToLongPress:)];
    longPress.minimumPressDuration = 1.0;
//    [self.view addGestureRecognizer:longPress];
    
    _arrow.userInteractionEnabled = true;
    
    [_arrow addGestureRecognizer:longPress];
    
    UITapGestureRecognizer * doubleTap = [[UITapGestureRecognizer alloc ] initWithTarget:self action:@selector(respondsToDoubleTap:)];
    doubleTap.numberOfTapsRequired = 2;
    
    [self.view addGestureRecognizer:doubleTap];
    
}


- (void)respondsToDoubleTap:(UIGestureRecognizer*) recognize{

    CGRect frame = _arrow.frame;
    frame.size = CGSizeMake(_arrow.frame.size.width + 10.0, _arrow.frame.size.height+10.0);
    _arrow.frame = frame;
    
}


- (void)respondsToLongPress:(UIGestureRecognizer*) recognizer{
    if (recognizer.state == UIGestureRecognizerStateBegan) {
                NSLog(@"LongPress");
    }
    


}















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
