//
//  DetailViewController.m
//  Every.Do - A basic todo list
//
//  Created by Colin on 2018-04-24.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _detailsLabel.text = self.todo.todoDescription;
    
}

@end
