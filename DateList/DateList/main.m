//
//  main.m
//  DateList
//
//  Created by Rick Anderson on 6/13/13.
//  Copyright (c) 2013 NativeX. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
//        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        NSMutableArray *dateList = [NSMutableArray array];
        
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
         
//        NSLog(@"There are %lu date", [dateList count]);
//        
//        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
//        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
//        
//
//        NSUInteger dateCount = [dateList count];
//        for (int i = 0; i < dateCount; i++) {
//            NSDate *d = [dateList objectAtIndex:i];
//            NSLog(@"Here is a date: %@", d);
//        }

        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
    }
    return 0;
}

