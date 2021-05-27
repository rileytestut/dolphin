//
//  RSTComponents.h
//  DolphiniOS-TV
//
//  Created by Riley Testut on 5/12/21.
//  Copyright © 2021 Dolphin Team. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RSTSwitch : UIControl

@property(nonatomic, getter=isOn) BOOL on;

- (void)setOn:(BOOL)on animated:(BOOL)animated;

@end

@interface RSTSlider : UIControl

@property(nonatomic) float value;

- (void)setValue:(float)value animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
