//
//  SoftwareGeckoEditViewController.h
//  DolphiniOS
//
//  Created by Julian Pascual on 2020-08-05.
//  Copyright © 2020 Dolphin Team. All rights reserved.
//

#import "Core/GeckoCode.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SoftwareGeckoEditViewController : UITableViewController

@property (nonatomic) Gecko::GeckoCode* m_gecko_code;
@property (nonatomic) bool m_should_be_pushed_back;

@property (weak, nonatomic) IBOutlet UITextField* m_name_field;
@property (weak, nonatomic) IBOutlet UITextField *m_creator_field;
@property (weak, nonatomic) IBOutlet UITextView* m_code_view;
@property (weak, nonatomic) IBOutlet UITextView* m_notes_view;

@end

NS_ASSUME_NONNULL_END
