//
//  main.m
//  filehandle
//
//  Created by 张威 on 16/5/31.
//  Copyright © 2016年 张威. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
   /* NSFileHandle *inFile,*outFile;
    NSData *buffer;
    
    
    //open the file testfile for reading
    inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];
    
    if (inFile==nil) {
        NSLog(@"Open of testfile for reading failed");
        return 1;
    }
    
    //
    
    */
    
    NSFileManager *fm;
    NSString *fmName =@"/Users/zhangwei/Desktop/Progs/filehandle/filehandle/testfile.txt";
    NSData *filedata;
    
    fm=[NSFileManager defaultManager];
    
    if ([fm fileExistsAtPath:fmName]==NO) {
        NSLog(@"file doesn't exit");
        return 1;
    }
    
    
    filedata = [fm contentsAtPath:fmName];
    if (filedata==nil) {
        NSLog(@"file read failed");
        return 1;
        
    }
    
   // NSLog(@"%@",[NSString stringWithContentsOfFile:fmName encoding:NSUTF8StringEncoding error:nil]);
    
    if ([fm createFileAtPath:@"/Users/zhangwei/Desktop/Progs/filehandle/filehandle/testfile1.txt" contents:filedata attributes:nil]==NO) {
        NSLog(@"condn't create the copy");
        return 1;
    }
    /*
    
    
    float arry[10000];
    int i;
    for (i=0; i<10000; ++i) {
        arry[i] = (arc4random() % 10000)+1;
    }
    */
    
    return 0;
}
