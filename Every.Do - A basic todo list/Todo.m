//
//  Todo.m
//  Every.Do - A basic todo list
//
//  Created by Colin on 2018-04-24.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "Todo.h"

@implementation Todo

- (instancetype)initWithTitle:(NSString *)title description:(NSString *)description details:(NSString *)details andPriorityNumber:(NSInteger)priorityNumber
{
    self = [super init];
    if (self) {
        _title = title;
        _todoDescription = description;
        _todoDetails = details;
        _priorityNumber = priorityNumber;
        _isCompleted = NO;
    }
    return self;
}

@end
