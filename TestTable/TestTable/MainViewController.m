//
//  MainViewController.m
//  TestTable
//
//  Created by iOS Developer on 21/11/13.
//  Copyright (c) 2013 iOS Developer. All rights reserved.
//

#import "MainViewController.h"
@interface MainViewController ()
@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";

    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:nil];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:nil];
    if (indexPath.row == 0) {

        if (cell == nil)
        {
            //            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
            //            cell = [nib objectAtIndex:0];
            
            NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"ActivateCell" owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
    }
    if (indexPath.row == 1) {
        
        if (cell == nil)
        {
            //            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
            //            cell = [nib objectAtIndex:0];
            
            NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"SettingsCell" owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
    }
    
    
     return cell;
}


#pragma marl UITableViewDelegate
- (CGFloat)tableView:(UITableView *)aTableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if ((indexPath.row == selectedCell - 1) & (selectedCell > 0)) {
        return tableView.frame.size.height - 40;
    }
    else if ((indexPath.row != selectedCell - 1) & (selectedCell > 0)) {
        return 40;
    }
    return tableView.frame.size.height/2;
}

- (void)tableView:(UITableView *)aTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (selectedCell == indexPath.row + 1) {
        selectedCell = 0;
    }
    else {
        selectedCell = indexPath.row + 1;
    }
//    [UIView beginAnimations:@"anim" context:nil];
//    [UIView animateWithDuration:0.5 animations:nil];
//    [tableView reloadData];
//    [UIView commitAnimations];
    
    
//    [UIView transitionWithView:tableView
//                      duration:0.5f
//                       options:UIViewAnimationOptionTransitionCurlUp
//                    animations:^(void) {
//                        [tableView reloadData];
//                    } completion:NULL];
    
    //[tableView reloadRowsAtIndexPaths:0 withRowAnimation:UITableViewRowAnimationBottom];
    
    [tableView beginUpdates];
    [tableView endUpdates];
}

@end
