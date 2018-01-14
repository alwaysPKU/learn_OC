//
//  main.m
//  File
//
//  Created by 张威 on 16/5/29.
//  Copyright © 2016年 张威. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <foundation/NSFileManager.h>
#import <Foundation/NSDictionary.h>


int main(int argc, const char * argv[]) {

    NSString *fName = @"testfile";
    NSFileManager *fm ;
    NSDictionary *attr;
    
    //need to create an instance of the file manager
    fm = [NSFileManager defaultManager];
    
    //let's make sure our test file exists first
    if ([fm fileExistsAtPath:fName]==NO) {
        NSLog(@"file doesn's exist!");
        return 1;
    }
  
    //now let's make a copy
    if ([fm copyPath:fName toPath:@"newfile " handler:nil]==NO) {
        NSLog(@"file copy failed");
        return 2;
    }
    
    //let's test to see if the two files are identical
    if ([fm contentsEqualAtPath:fName andPath:@"newfile"]==NO) {
        NSLog(@"files are not equal!");
        return 3;
    }
    
    //now let's rename the copy
    if ([fm movePath:@"newfile" toPath:@"newfile2" handler:nil]==NO) {
        NSLog(@"file rename failed!");
        return 4;
    }
    
    //get the size of newfile2
    if ((attr =[fm fileAttributesAtPath:@"newfile2" traverseLink:NO])==nil) {
        NSLog(@"couldn't get file attributes!");
        return 5;
    }
    
    NSLog(@"file size if %i bytes",[[attr objectForKey:NSFileSize]intValue]);
    
    //and finally .let's detete the original file
    if ([fm removeFileAtPath:fName handler:nil]==NO) {
        NSLog(@"file remove failed!");
        return 6;
    }
    NSLog(@"all operations were successful!");
    
    //display the contents of newly-created file
    NSLog(@"%@",[NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error:nil]);
    
    return 0;
    
   
    
}
