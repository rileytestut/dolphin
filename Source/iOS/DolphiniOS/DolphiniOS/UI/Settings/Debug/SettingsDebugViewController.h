// Copyright 2020 Dolphin Emulator Project
// Licensed under GPLv2+
// Refer to the license.txt file included.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SettingsDebugViewController : UITableViewController

@property (weak, nonatomic) IBOutlet RSTSwitch* m_load_store_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_load_store_fp_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_load_store_p_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_fp_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_integer_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_p_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_system_registers_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_branch_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_register_cache_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_skip_idle_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_fastmem_switch;
@property (weak, nonatomic) IBOutlet RSTSwitch* m_hacky_fastmem_switch;

@end

NS_ASSUME_NONNULL_END
