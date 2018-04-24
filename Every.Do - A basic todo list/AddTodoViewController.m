//
//  AddTodoViewController.m
//  Every.Do - A basic todo list
//
//  Created by Colin on 2018-04-24.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "AddTodoViewController.h"
#import "Todo.h"

@interface AddTodoViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextView *detailsTextField;
@property (weak, nonatomic) IBOutlet UITextField *priorityNumberTextField;

@end

@implementation AddTodoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)addButtonPressed:(UIBarButtonItem *)sender {
    Todo *newTodo = [[Todo alloc]initWithTitle:self.titleTextField.text description:self.descriptionTextField.text details:self.detailsTextField.text andPriorityNumber:[self.priorityNumberTextField.text intValue]];
    
}


@end
