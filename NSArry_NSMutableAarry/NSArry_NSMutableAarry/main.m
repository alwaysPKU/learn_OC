//
//  main.m
//  NSArry_NSMutableAarry
//
//  Created by 张威 on 16/5/26.
//  Copyright © 2016年 张威. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int i;
    //create an array to contain the month names
    
    NSArray *monthNames = [NSArray arrayWithObjects:@"January",@"February",@"March",@"April",@"May",@"June",@"July",@"August",@"September",@"October",@"November",@"December", nil];
    
    //now lise all the elements in the array
    
    NSLog(@"Moth Name ");
    NSLog(@"===== ==== ");
    
    for (i=0; i<12; ++i) {
        NSLog(@"%2i %@",i+1,[monthNames objectAtIndex:i]);
        
    }
    
    
    
    
    
    
    return 0;
}
