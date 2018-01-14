//
//  AddressCard.h
//  AddressCard
//
//  Created by 张威 on 16/5/26.
//  Copyright © 2016年 张威. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

{
    NSString *name;
    NSString *email;
}
@property  NSString* name,*email;

-(void) setName : (NSString * ) theName;
-(void) setEmail : (NSString *) theEmail;

-(void) print;


@end
