// Copyright 2020 Dolphin Emulator Project
// Licensed under GPLv2+
// Refer to the license.txt file included.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConfigWiiViewController : UITableViewController

@property (weak, nonatomic) IBOutlet RSTSwitch* m_pal60_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_screen_saver_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_sd_card_switch;
@property (weak, nonatomic) IBOutlet RSTSlider* m_ir_slider;
@property (weak, nonatomic) IBOutlet RSTSlider* m_volume_slider;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_rumble_switch;

@end

NS_ASSUME_NONNULL_END
