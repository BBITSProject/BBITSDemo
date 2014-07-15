//
//  ActivateCell.m
//  TestTable
//
//  Created by iOS Developer on 21/11/13.
//  Copyright (c) 2013 iOS Developer. All rights reserved.
//

#import "ActivateCell.h"

@implementation ActivateCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
