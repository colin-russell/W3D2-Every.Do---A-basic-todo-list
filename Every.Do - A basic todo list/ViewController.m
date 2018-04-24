//
//  ViewController.m
//  Every.Do - A basic todo list
//
//  Created by Colin on 2018-04-24.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "ViewController.h"
#import "Todo.h"
#import "ToDoTableViewCell.h"

@interface ViewController ()

@property (nonatomic, strong)NSMutableArray* todoArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.todoArray = [NSMutableArray new];
    // create ToDo objects
    [self.todoArray addObject:[[Todo alloc] initWithTitle:@"one" description:@"one description" andPriorityNumber:1]];
    [self.todoArray addObject:[[Todo alloc] initWithTitle:@"two" description:@"two description" andPriorityNumber:2]];
    [self.todoArray addObject:[[Todo alloc] initWithTitle:@"three" description:@"three description" andPriorityNumber:3]];
    [self.todoArray addObject:[[Todo alloc] initWithTitle:@"four" description:@"four description" andPriorityNumber:4]];
    [self.todoArray addObject:[[Todo alloc] initWithTitle:@"five" description:@"five description" andPriorityNumber:5]];
    
}



#pragma mark - ToDoTableViewDataSource

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ToDoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"todoCell" forIndexPath:indexPath];

    if (indexPath.row < self.todoArray.count) {
        
        Todo *todo = [self.todoArray objectAtIndex:indexPath.row];
        cell.titleLabel.text = todo.title;
        cell.priorityLabel.text = [NSString stringWithFormat:@"%lu", todo.priorityNumber];
        cell.taskDescriptionLabel.text = todo.todoDescription;
    }
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.todoArray.count;
}


@end
