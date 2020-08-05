//
//  SoftwareGeckoViewController.h
//  DolphiniOS
//
//  Created by Julian Pascual on 2020-08-05.
//  Copyright © 2020 Dolphin Team. All rights reserved.
//

#import "Core/GeckoCode.h"

#import "UICommon/GameFile.h"

#import <UIKit/UIKit.h>

#import <vector>

NS_ASSUME_NONNULL_BEGIN

@interface SoftwareGeckoViewController : UITableViewController
{
  std::vector<Gecko::GeckoCode> m_gecko_codes;
}

@property(nonatomic) UICommon::GameFile* m_game_file;

@end

NS_ASSUME_NONNULL_END
