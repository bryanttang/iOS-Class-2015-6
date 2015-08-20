//
//  myCell.m
//  helloDemo20130820
//
//  Created by bryant on 20/8/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "myCell.h"

@implementation myCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)setup:(NSDictionary*)info{
    
    //load image
    dispatch_queue_t processQueue_2 = dispatch_queue_create("PROCESS_QUEUE", NULL);
    
    dispatch_async(processQueue_2, ^{
        
        NSURL *img_url = [NSURL URLWithString:[info objectForKey:@"img"]];
        NSData *img_data = [NSData dataWithContentsOfURL:img_url];

        if (img_data != nil) {
            //Assign image
            UIImage *img = [UIImage imageWithData:img_data];
            [_img setImage:img];
            
        }
      
    });


}
@end
