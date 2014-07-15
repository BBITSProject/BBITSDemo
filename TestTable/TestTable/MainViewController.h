//
//  MainViewController.h
//  TestTable
//
//  Created by iOS Developer on 21/11/13.
//  Copyright (c) 2013 iOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ActivateCell, SettingsCell;
@interface MainViewController : UIViewController {
    IBOutlet UITableView *tableView;
    IBOutlet ActivateCell *activateCell;
    IBOutlet SettingsCell *settingsCell;
    int selectedCell;
    
}

@end
