//
//  RSTComponents.m
//  DolphiniOS-TV
//
//  Created by Riley Testut on 5/12/21.
//  Copyright © 2021 Dolphin Team. All rights reserved.
//

#import "RSTComponents.h"

@implementation RSTSwitch

- (void)setOn:(BOOL)on animated:(BOOL)animated
{
    self.on = on;
}

@end

@implementation RSTSlider

- (void)setValue:(float)value animated:(BOOL)animated
{
    self.value = value;
}

@end
