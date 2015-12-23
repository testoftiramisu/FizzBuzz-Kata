//
//  FizzBuzz.m
//  FizzBuzz
//
//  Created by Denys Khlivnyy on 11/17/15.
//  Copyright © 2015 Denys Khlivnyy. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz



- (NSString *)getAnswerFor:(int)number{
    NSString *answer = [NSString stringWithFormat:@"%d", number];
    
    if ([self isMultipleOfThree:number]&&[self isMultipleOfFive:number]) {
        answer = @"FizzBuzz";
    }
    else if([self isMultipleOfThree:number]){
        answer = @"Fizz";
    }
   else if ([self isMultipleOfFive:number]){
        answer = @"Buzz";
    }
    return answer;
}

- (BOOL) isMultipleOfFive:(int) number{
    return number % 5 == 0;
}

- (BOOL) isMultipleOfThree:(int) number{
    return number % 3 == 0;
}

@end
