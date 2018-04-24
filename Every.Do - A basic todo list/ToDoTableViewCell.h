//
//  ToDoTableViewCell.h
//  Every.Do - A basic todo list
//
//  Created by Colin on 2018-04-24.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"

@interface ToDoTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UILabel *taskDescriptionLabel;
@property (nonatomic, strong) Todo *todo;

- (void)setLabels;
@end
