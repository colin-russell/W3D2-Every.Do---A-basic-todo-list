//
//  DetailViewController.m
//  Every.Do - A basic todo list
//
//  Created by Colin on 2018-04-24.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityNumberLabel;
@property (weak, nonatomic) IBOutlet UINavigationItem *titleBarLabel;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.titleBarLabel setTitle:self.todo.title];
    _descriptionLabel.text = self.todo.todoDescription;
    _detailsLabel.text = self.todo.todoDetails;
    _priorityNumberLabel.text = [NSString stringWithFormat:@"%lu", self.todo.priorityNumber];
    [self.descriptionLabel sizeToFit];
}

@end
