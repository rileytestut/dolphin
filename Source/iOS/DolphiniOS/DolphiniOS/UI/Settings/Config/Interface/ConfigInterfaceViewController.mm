// Copyright 2020 Dolphin Emulator Project
// Licensed under GPLv2+
// Refer to the license.txt file included.

#import "ConfigInterfaceViewController.h"

#import "Common/MsgHandler.h"

#import "Core/ConfigManager.h"

@interface ConfigInterfaceViewController ()

@end

@implementation ConfigInterfaceViewController

// Skipped settings:
// "User Interface" (all) - none needed from here
// "Keep Window on Top" - no concept of layered windows on iOS
// "Show Active Title in Window Title" - no window title in iOS
// "Pause on Focus Loss" - default behaviour for all iOS apps
// "Always Hide Mouse Cursor" - no concept of a mouse cursor on iOS

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  
#if !TARGET_OS_TV
  [self.m_confirm_stop_switch setOn:SConfig::GetInstance().bConfirmStop];
  [self.m_panic_handlers_switch setOn:SConfig::GetInstance().bUsePanicHandlers];
  [self.m_osd_switch setOn:SConfig::GetInstance().bOnScreenDisplayMessages];
  [self.m_center_image_switch setOn:[[NSUserDefaults standardUserDefaults] boolForKey:@"do_not_raise_rendering_view"]];
  [self.m_status_bar_switch setOn:[[NSUserDefaults standardUserDefaults] boolForKey:@"show_status_bar"]];
#endif
}

- (IBAction)ConfirmStopChanged:(id)sender
{
#if !TARGET_OS_TV
  SConfig::GetInstance().bConfirmStop = [self.m_confirm_stop_switch isOn];
#endif
}

- (IBAction)UsePanicHandlersChanged:(id)sender
{
#if !TARGET_OS_TV
  SConfig::GetInstance().bUsePanicHandlers = [self.m_panic_handlers_switch isOn];
  Common::SetEnableAlert([self.m_panic_handlers_switch isOn]);
#endif
}

- (IBAction)ShowOsdChanged:(id)sender
{
#if !TARGET_OS_TV
  SConfig::GetInstance().bOnScreenDisplayMessages = [self.m_osd_switch isOn];
#endif
}

- (IBAction)CenterImageChanged:(id)sender
{
#if !TARGET_OS_TV
  [[NSUserDefaults standardUserDefaults] setBool:[self.m_center_image_switch isOn] forKey:@"do_not_raise_rendering_view"];
#endif
}

- (IBAction)ShowStatusBarChanged:(id)sender {
#if !TARGET_OS_TV
  [[NSUserDefaults standardUserDefaults] setBool:[self.m_status_bar_switch isOn] forKey:@"show_status_bar"];
#endif
}

@end
