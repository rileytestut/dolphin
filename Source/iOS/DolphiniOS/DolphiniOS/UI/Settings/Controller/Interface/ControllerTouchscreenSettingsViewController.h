// Copyright 2020 Dolphin Emulator Project
// Licensed under GPLv2+
// Refer to the license.txt file included.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ControllerTouchscreenSettingsViewController : UITableViewController

@property (weak, nonatomic) IBOutlet RSTSwitch* m_haptic_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_rumble_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_3d_touch_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_motion_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_motion_pointer_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_recentering_switch;
@property (weak, nonatomic) IBOutlet RSTSlider* m_button_opacity_slider;

@end

NS_ASSUME_NONNULL_END
