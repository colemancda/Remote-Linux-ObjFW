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
        
        NSString *hello = @"Hello, World!";
        
        printf("%s", hello.UTF8String);
    }
    return 0;
}
