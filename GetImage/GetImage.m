//
//  GetImage.m
//  test070309
//
//  Created by Lycodes_Dong on 7/3/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "GetImage.h"

@implementation GetImage

+ (void)getImageWithURL:(NSString *)urlstring Completion:(void(^)(UIImage * __nullable image, NSError * __nullable error))completion {

    NSURL *url = [NSURL URLWithString:urlstring];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDownloadTask *downloadTask = [session downloadTaskWithRequest:request completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error){
        
        if (error == nil) {
            
            NSData *data = [NSData dataWithContentsOfURL:location];
            
            UIImage *image = [UIImage imageWithData:data];
            
            completion(image,nil);
            
        }else {
        
            completion(nil,error);
        
        }
        
    }];
    
    [downloadTask resume];

}

@end
