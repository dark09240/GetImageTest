//
//  GetImage.h
//  test070309
//
//  Created by Lycodes_Dong on 7/3/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GetImage : NSObject

+ (void)getImageWithURL:(NSString *)urlstring Target:(id)target Action:(SEL)action Name:(NSString *)name;

+ (void)getImageWithURL:(NSString *)urlstring Completion:(void(^)(UIImage *))completion;

@end
