//
//  ToDoTableViewCell.m
//  Every.Do - A basic todo list
//
//  Created by Colin on 2018-04-24.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "ToDoTableViewCell.h"

@implementation ToDoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setLabels {
    self.titleLabel.text = self.todo.title;
    self.priorityLabel.text = [NSString stringWithFormat:@"%lu", self.todo.priorityNumber];
    self.taskDescriptionLabel.text = self.todo.todoDescription;
    if (self.todo.isCompleted) {
        self.backgroundColor = [UIColor greenColor];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
