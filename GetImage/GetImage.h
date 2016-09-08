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

NS_ASSUME_NONNULL_BEGIN

+ (void)getImageWithURL:(NSString *)urlstring Completion:(void(^)(UIImage * __nullable image, NSError * __nullable error))completion;

NS_ASSUME_NONNULL_END

@end
