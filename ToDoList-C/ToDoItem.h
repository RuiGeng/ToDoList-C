//
//  ToDoItem.h
//  ToDoList-C
//
//  Created by Rui on 2016-12-05.
//  Copyright © 2016 Rui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
