//
//  Todo.h
//  Every.Do - A basic todo list
//
//  Created by Colin on 2018-04-24.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Todo : NSObject
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *todoDescription;
@property (nonatomic) NSInteger priorityNumber;
@property (nonatomic) BOOL isCompleted;

- (instancetype)initWithTitle:(NSString *)title description:(NSString *)description andPriorityNumber:(NSInteger)priorityNumber;

@end
