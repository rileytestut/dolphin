// Copyright 2020 Dolphin Emulator Project
// Licensed under GPLv2+
// Refer to the license.txt file included.

#import "ConfigGameCubeViewController.h"

#import "Core/Config/MainSettings.h"
#import "Core/ConfigManager.h"

@interface ConfigGameCubeViewController ()

@end

@implementation ConfigGameCubeViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  
#if !TARGET_OS_TV
  [self.m_skip_ipl_switch setOn:SConfig::GetInstance().bHLE_BS2];
#endif
}

- (IBAction)SkipIPLChanged:(id)sender
{
#if !TARGET_OS_TV
  SConfig::GetInstance().bHLE_BS2 = [self.m_skip_ipl_switch isOn];
  Config::SetBaseOrCurrent(Config::MAIN_SKIP_IPL, [self.m_skip_ipl_switch isOn]);
#endif
}


@end
