//
//  DosyaOku.h
//  learn-obj-c-ios
//
//  Created by Mac on 15.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DosyaOku : NSObject

+ (NSString * ) okuWithResource: (NSString *) resource
                        andType:(NSString *) type;
                
+ ( NSString * )
    telefondakiKlasordenOkuWithResource: (NSString *) resource
    andType:(NSString *) type;


@end

NS_ASSUME_NONNULL_END
