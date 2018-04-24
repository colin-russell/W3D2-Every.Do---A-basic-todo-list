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
#import "DetailViewController.h"
#import "AddTodoViewController.h"

@interface ViewController ()<ToDoDelegate>

@property (nonatomic, strong)NSMutableArray* todoArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.todoArray = [NSMutableArray new];
    // create ToDo objects
    [self.todoArray addObject:[[Todo alloc] initWithTitle:@"Dog" description:@"Walk my dog" details:@"walk my dog down my street at 4pm! don't forget to pick up the poop!" andPriorityNumber:1]];
    [self.todoArray addObject:[[Todo alloc] initWithTitle:@"two" description:@"two description" details:@"" andPriorityNumber:2]];
    [self.todoArray addObject:[[Todo alloc] initWithTitle:@"three" description:@"three description" details:@"" andPriorityNumber:3]];
    [self.todoArray addObject:[[Todo alloc] initWithTitle:@"four" description:@"four description" details:@"" andPriorityNumber:4]];
  
}


#pragma mark - ToDoTableViewDataSource

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ToDoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"todoCell" forIndexPath:indexPath];
    
    // create my custom cells for each of the elements in the array
    if (indexPath.row < self.todoArray.count) {
        Todo *todo = [self.todoArray objectAtIndex:indexPath.row];
        cell.todo = todo;
    }
    [cell setLabels];
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleCellTap:)];
    [cell addGestureRecognizer:tapGestureRecognizer];
    
    UISwipeGestureRecognizer *swipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleCellSwipe:)];
    [cell addGestureRecognizer:swipeGestureRecognizer];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.todoArray.count;
}


#pragma mark - Handle Gestures
- (void)handleCellTap:(UITapGestureRecognizer *)sender {
    ToDoTableViewCell *cell = (ToDoTableViewCell *)sender.view;
    Todo *todo = cell.todo;
    [self performSegueWithIdentifier:@"detailSegue" sender:todo];
}
- (void)handleCellSwipe:(UISwipeGestureRecognizer *)sender {
    NSMutableArray *tempArray = self.todoArray;
    ToDoTableViewCell *cell = (ToDoTableViewCell *)sender.view;
    [tempArray removeObject:cell.todo];
    cell.todo.isCompleted = YES;
    [tempArray addObject:cell.todo];

    [self.tableView reloadData];
    
}

#pragma mark - Segues
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier containsString:@"detailSegue"]) {
    DetailViewController *detailViewController = (DetailViewController*)segue.destinationViewController;
    detailViewController.todo = sender;
    }
    
    if ([segue.identifier containsString:@"todoSegue"]) {
        AddTodoViewController *addTodoViewController = (AddTodoViewController *)segue.destinationViewController;
        addTodoViewController.delegate = self;
    }
}

#pragma mark - Delegate Method
- (void)addTodo:(Todo *)newTodo {
    [self.todoArray insertObject:newTodo atIndex:0];
    [self.tableView reloadData];
}



@end
