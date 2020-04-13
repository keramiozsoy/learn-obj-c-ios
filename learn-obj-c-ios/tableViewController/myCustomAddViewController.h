//
//  myCustomAddViewController.h
//  learn-obj-c-ios
//
//  Created by Mac on 13.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Kisi.h"

NS_ASSUME_NONNULL_BEGIN

@interface myCustomAddViewController : UIViewController
- (IBAction)buttonAction_TouchUpInside:(id)sender;


@property (weak, nonatomic) IBOutlet UITextField *textfieldOutlet_kisiAdi;

@property (weak, nonatomic) IBOutlet UITextField *textfieldOutlet_kisiYasi;

@end

NS_ASSUME_NONNULL_END
