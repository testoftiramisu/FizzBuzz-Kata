//
//  main.m
//  FizzBuzz
//
//  Created by Denys Khlivnyy on 11/17/15.
//  Copyright © 2015 Denys Khlivnyy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FizzBuzz.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FizzBuzz *fizzBuzz = [[FizzBuzz alloc] init];
        
        for (int i = 1; i<=100; ++i) {
            NSLog(@"%@",[fizzBuzz getAnswerFor: i]);
            
        }
    }
    
    return 0;
}
