//
//  myCustomViewController.h
//  learn-obj-c-ios
//
//  Created by Mac on 12.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Kisi.h"

NS_ASSUME_NONNULL_BEGIN

@interface myCustomViewController : UIViewController



// seque ile gelen veriyi
// bu degiskene set edecegiz
@property Kisi *gonderilenKisi;

@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;




@end

NS_ASSUME_NONNULL_END
