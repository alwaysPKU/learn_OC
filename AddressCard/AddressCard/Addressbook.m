//
//  Addressbook.m
//  AddressCard
//
//  Created by 张威 on 16/5/27.
//  Copyright © 2016年 张威. All rights reserved.
//

#import "Addressbook.h"
#import "AddressCard.h"

@implementation Addressbook
//set up the addressbook's name and an empty book

-(id) initwithname:(NSString *)name
{
    //self = [super init];
    
    if (self) {
        bookName = [[NSString alloc]initWithString:name];
        book = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) addcard:(AddressCard *)theCard
{
    [book addObject:theCard];
}

-(int) entries
{
    return [book count];
}

-(void) list
{
    NSLog(@"======== contents of : %@ =======",bookName);
    for (AddressCard*theCard  in book) {
        NSLog(@"%-20s %-30s",[theCard.name UTF8String],[theCard.email UTF8String]);
    }
    NSLog(@"=========================================================");
}


@end
