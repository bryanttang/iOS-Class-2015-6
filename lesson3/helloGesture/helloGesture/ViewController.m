//
//  ViewController.m
//  helloGesture
//
//  Created by bryant on 9/7/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToTap:)];
    
    tap.numberOfTapsRequired = 2;
    
    
    
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToLongPress:)];
    
    longPress.minimumPressDuration = 0.2;

    
    [self.view bringSubviewToFront:_arrow];
    
    //NSLog(@"%@",self.arrow.gestureRecognizers);
    
//    _arrow.layer.frame = CGRectMake(50, 50, 200, 200);
//    _arrow.layer.backgroundColor = [[UIColor redColor] CGColor];
    
    
    UIImageView *abc = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow"]];
    abc.userInteractionEnabled = true;
    abc.frame = CGRectMake(90, 90, 40, 40);
    [self.view addSubview:abc];
    
    [abc addGestureRecognizer:longPress];

    [abc addGestureRecognizer:tap];
}

- (void)respondsToLongPress:(UILongPressGestureRecognizer*) longPress{
    
    if (longPress.state == UIGestureRecognizerStateBegan) {
       
        
        _arrow.frame= CGRectMake(180, 240, 40, 40);
        
    }
    

}


- (void)respondsToTap:(UITapGestureRecognizer*)tap
{
    
    _arrow.frame = CGRectMake(_arrow.frame.origin.x,
                              _arrow.frame.origin.y,
                              _arrow.frame.size.width + 30,
                              _arrow.frame.size.height + 30);
    
    _arrow.center = CGPointMake(160, 200);
    
}











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
