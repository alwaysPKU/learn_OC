//
//  main.m
//  AddressCard
//
//  Created by 张威 on 16/5/26.
//  Copyright © 2016年 张威. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "Addressbook.h"

int main(int argc, const char * argv[]) {
    NSString *aName = @"Julia Kochan";
    NSString *aEmial = @"jewls337@axlc.com";
    NSString *bName = @"Tony Iannino";
    NSString *bEmial = @"tony.iannino@techfitness.com";
    NSString *cName = @"Stephen Kochan ";
    NSString *cEmial = @"steve@kochan-wood.com";
    NSString *dName = @"Jamie Baker";
    NSString *dEmial = @"jbaker@kochan-wood.com";
    
    
    AddressCard *card1 =[[AddressCard alloc]init];
    AddressCard *card2 =[[AddressCard alloc]init];
    AddressCard *card3 =[[AddressCard alloc]init];
    AddressCard *card4 =[[AddressCard alloc]init];
    
    Addressbook *myBook = [[Addressbook alloc]init];
    //first set up four address cards
    [card1 setName:aName];
    [card1 setEmail:aEmial];
    [card2 setName:bName];
    [card2 setEmail:bEmial];
    [card3 setName:cName];
    [card3 setEmail:cEmial];
    [card4 setName:dName];
    [card4 setEmail:dEmial];
    
    
    //now initilalize the address cards
    myBook = [myBook initwithname:@"Linda's Address book"];
    
    NSLog(@"Entries in address book after creation: %i",[myBook entries]);
    
    //add some cards to the address book
    
    [myBook addcard:card1];
    [myBook addcard:card2];
    [myBook addcard:card3];
    [myBook addcard:card4];
    
    NSLog(@"Entries in address book after adding cards: %i",[myBook entries]);
    
    //list all the entries in the book now
    
    [myBook list];
    
    
    
    return 0;
}
