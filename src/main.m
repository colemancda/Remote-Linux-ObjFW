//
//  main.m
//  Hello World
//
//  Created by Alsey Coleman Miller on 3/13/15.
//
//

#import <ObjFW/ObjFW.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        OFString *hello = @"Hello, World!";
        
        printf("%s\n", hello.UTF8String);
    }
    return 0;
}
