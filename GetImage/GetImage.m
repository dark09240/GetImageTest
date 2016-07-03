//
//  GetImage.m
//  test070309
//
//  Created by Lycodes_Dong on 7/3/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "GetImage.h"

@implementation GetImage

+ (void)getImageWithURL:(NSString *)urlstring Target:(id)target Action:(SEL)action Name:(NSString *)name {

    [[NSNotificationCenter defaultCenter]addObserver:target selector:action name:name object:nil];
    
    NSURL *url = [NSURL URLWithString:urlstring];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDownloadTask *downloadTask = [session downloadTaskWithRequest:request completionHandler:^(NSURL *location,NSURLResponse *response,NSError *error){
    
        if (error == nil) {
            
            NSData *data = [NSData dataWithContentsOfURL:location];
            
            UIImage *image = [UIImage imageWithData:data];
            
            [[NSNotificationCenter defaultCenter]postNotificationName:name object:image];
            
        }
    
    }];

    [downloadTask resume];
    
}

@end
