//
//  calculator.h
//  helloconverter
//
//  Created by bryant on 9/7/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface calculator : NSObject
{
//    double result;
    double opand1;
    double opand2;
}
@property double result;

-(double)add:(double)input1 :(double)input2;
-(double)sub:(double)input1 :(double)input2;
-(double)add;

+(double)addInput1:(double)input1 Input2:(double)input2;
//-(double)addInput1:(double)input1 Input2:(double)input2;


@end
