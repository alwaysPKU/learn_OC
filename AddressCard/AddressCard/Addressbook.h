//
//  Addressbook.h
//  AddressCard
//
//  Created by 张威 on 16/5/27.
//  Copyright © 2016年 张威. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface Addressbook : NSObject


{
    NSString *bookName;
    NSMutableArray *book;
    
}


-(id) initwithname: (NSString*) name;
-(void) addcard: (AddressCard *) theCard;
-(int) entries;
-(void) list;
-(void) dealloc;
@end
