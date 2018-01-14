//
//  AddressCard.m
//  AddressCard
//
//  Created by 张威 on 16/5/26.
//  Copyright © 2016年 张威. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name,email;

-(void) setName:(NSString *)theName
{
    name = [[NSString alloc] initWithString:theName];
    
}

-(void) setEmail:(NSString *)theEmail
{
    email = [[NSString alloc] initWithString:theEmail];
}

-(NSString *) name
{
    return name;
}

-(NSString*) email
{
    return email;
}

-(void) print
{
    NSLog(@"=================================");
    NSLog(@"|                               |");
    NSLog(@"| %-31s|",[name UTF8String]);
    NSLog(@"| %-31s|",[email UTF8String]);
    NSLog(@"|                               |");
    NSLog(@"|                               |");
    NSLog(@"|                               |");
    NSLog(@"|     o                  o      |");
    NSLog(@"=================================");
}





@end
