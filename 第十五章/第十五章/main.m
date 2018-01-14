//
//  main.m
//  第十五章
//
//  Created by 张威 on 16/5/25.
//  Copyright © 2016年 张威. All rights reserved.
//

//#import <Foundation/Foundation.h>

#import <Foundation/NSObject.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSValue.h>

#import <Foundation/NSString.h>

int main(int argc, const char * argv[]) {

    NSNumber *myNumber,*floatNumber,*intNumber;
    NSInteger myInt;
    
    
    //integer value
    intNumber = [NSNumber numberWithInt:100];
    myInt = [intNumber integerValue];
    NSLog(@"%li", (long) myInt);
    
    
    //long value
    myNumber = [NSNumber numberWithLong:0xabcdef];
    NSLog(@"%lx" , [myNumber longValue]);
    
    
    // char value
    myNumber = [NSNumber numberWithChar:'X'];
    NSLog(@"%c" , [myNumber charValue]);

    
    
    //float value
    floatNumber = [NSNumber numberWithFloat:100.00];
    NSLog(@"%g", [floatNumber floatValue]);
    
    
    //double
    
    myNumber = [NSNumber numberWithDouble:1234e+15];
    NSLog(@"%lg", [myNumber doubleValue]);
    
    //wrong access here
    NSLog(@"%li",[myNumber integerValue]);
    
    //test two numbers for quility
    if ([intNumber isEqualToNumber:floatNumber] == YES) {
        NSLog(@"Numbers are equal");
    }
    else
        NSLog(@"Numbers are not equal");
    
    //test if one number is <,==,or > second Number;
    if ([intNumber compare:myNumber]== NSOrderedAscending) {
        NSLog(@"First number is less than second");
    }
    return 0;
    
    
    
    
    
    
    
    
    
    
    
    
    
}
