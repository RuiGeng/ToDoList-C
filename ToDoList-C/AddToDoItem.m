//
//  AddToDoItem.m
//  ToDoList-C
//
//  Created by Rui on 2016-12-04.
//  Copyright © 2016 Rui. All rights reserved.
//

#import "AddToDoItem.h"

@interface AddToDoItem ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation AddToDoItem

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (sender != self.doneButton){
        return;
    }
    
    if (self.textField.text.length > 0){
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
        self.toDoItem.creationDate = [NSDate date];
    }
    
}


@end
