// Copyright 2020 Dolphin Emulator Project
// Licensed under GPLv2+
// Refer to the license.txt file included.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConfigGeneralViewController : UITableViewController

@property (weak, nonatomic) IBOutlet RSTSwitch* m_dual_core_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_cheats_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_mismatched_region_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_change_discs_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_statistics_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_crash_report_switch;

@end

NS_ASSUME_NONNULL_END
