//
//  main.m
//  Groceries
//
//  Created by Rick Anderson on 6/13/13.
//  Copyright (c) 2013 NativeX. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *groceriesList = [NSMutableArray array];
        
        NSString *apple = @"Apple";
        NSString *grape = @"Grape";
        NSString *cherry = @"Cherry";
        NSString *milk = @"milk";
        NSString *ceriel = @"Ceriel";
        NSString *toast = @"Toast";
        
        [groceriesList addObject:apple];
        [groceriesList addObject:grape];
        [groceriesList addObject:cherry];
        [groceriesList addObject:milk];
        [groceriesList addObject:ceriel];
        [groceriesList addObject:toast];
        
        for (NSString *i in groceriesList) {
            NSLog(@"grocery list item: %@", i);
        }
        
    }
    return 0;
}

