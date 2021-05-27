// Copyright 2019 Dolphin Emulator Project
// Licensed under GPLv2+
// Refer to the license.txt file included.

#import "ControllerGroupCheckboxCell.h"

@interface ControllerGroupCheckboxCell ()

@property (assign) BOOL currentValue;

@end

@implementation ControllerGroupCheckboxCell

- (void)awakeFromNib
{
  [super awakeFromNib];
  // Initialization code
}

- (void)SetupCellWithSetting:(ControllerEmu::NumericSetting<bool>*)setting
{
  self.m_setting = setting;
    
    self.currentValue = setting->GetValue();
  
#if !TARGET_OS_TV
  [self.m_name_label setText:DOLocalizedString([NSString stringWithUTF8String:setting->GetUIName()])];
#else
    [self.textLabel setText:DOLocalizedString([NSString stringWithUTF8String:setting->GetUIName()])];
    self.accessoryType = self.currentValue ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
#endif
  [self.m_switch setOn:setting->GetValue()];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  [super setSelected:selected animated:animated];
    
    if (!selected)
    {
        return;
    }
    
    self.currentValue = !self.currentValue;
    [self.m_switch setOn:self.currentValue];
    
    self.accessoryType = self.currentValue ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
    
    self.m_setting->SetValue(self.currentValue);

  // Configure the view for the selected state
}

- (IBAction)SwitchChanged:(id)sender
{
    self.currentValue = [self.m_switch isOn];
    self.m_setting->SetValue([self.m_switch isOn]);
}

@end
