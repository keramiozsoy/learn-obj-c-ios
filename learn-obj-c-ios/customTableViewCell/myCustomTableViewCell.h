//
//  myCustomTableViewCell.h
//  learn-obj-c-ios
//
//  Created by Mac on 12.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface myCustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *myCustomLabelOutlet;

@property (weak, nonatomic) IBOutlet UIImageView *myCustomImageViewOutlet;


@end

NS_ASSUME_NONNULL_END
