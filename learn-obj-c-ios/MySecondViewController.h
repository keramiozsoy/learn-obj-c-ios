//
//  MySecondViewController.h
//  learn-obj-c-ios
//
//  Created by Mac on 3.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MySecondViewController : UIViewController

@property NSString *str1;
@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;

@end

NS_ASSUME_NONNULL_END
