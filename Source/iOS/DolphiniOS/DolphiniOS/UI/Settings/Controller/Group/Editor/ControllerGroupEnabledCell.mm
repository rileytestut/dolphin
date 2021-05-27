// Copyright 2019 Dolphin Emulator Project
// Licensed under GPLv2+
// Refer to the license.txt file included.

#import "ControllerGroupEnabledCell.h"

@interface ControllerGroupEnabledCell ()

@property (assign) BOOL currentValue;

@end

@implementation ControllerGroupEnabledCell

- (void)awakeFromNib
{
  [super awakeFromNib];
  // Initialization code
}

- (void)SetupCellWithGroup:(ControllerEmu::ControlGroup*)group
{
  self.m_group = group;
    
    self.currentValue = self.m_group->enabled;
  
#if !TARGET_OS_TV
    [self.m_switch setOn:self.m_group->enabled];
#else
    [self.textLabel setText:DOLocalizedString([NSString stringWithUTF8String:self.m_group->ui_name.c_str()])];
    self.accessoryType = self.currentValue ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
#endif
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
    
    self.m_group->enabled = self.currentValue;

  // Configure the view for the selected state
}

- (IBAction)SwitchChanged:(id)sender
{
    self.currentValue = [self.m_switch isOn];
#if !TARGET_OS_TV
  self.m_group->enabled = [self.m_switch isOn];
#endif
}

@end
