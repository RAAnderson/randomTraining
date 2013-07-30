//
//  main.m
//  WordChallenge
//
//  Created by Rick Anderson on 6/13/13.
//  Copyright (c) 2013 NativeX. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *properWordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                          encoding:NSUTF8StringEncoding
                                                             error:NULL];
        NSString *regularWordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                           encoding:NSUTF8StringEncoding
                                                              error:NULL];
        
        //break into strings
        NSArray *properWords = [properWordsString componentsSeparatedByString:@"\n"];
        NSArray *regularWords = [regularWordsString componentsSeparatedByString:@"\n"];
        
        for (NSString *p in properWords) {
            for (NSString *r in regularWords) {
                if ([p caseInsensitiveCompare:r] == NSOrderedSame) {
                    //NSLog(@" %p and %r are equal", p, r);
                    //[NSString stringWithFormat:@" %p and %r are equal", p, r];
                    //NSLog([NSString stringWithFormat:@" %@ and %@ are equal", p, r]);
                    NSLog(@" %@ and %@", p, r);
                }
            }
        }
        
    }
    return 0;
}

