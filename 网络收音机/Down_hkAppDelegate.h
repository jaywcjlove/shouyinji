//
//  Down_hkAppDelegate.h
//  网络收音机
//
//  Created by kenny.wang on 13-11-20.
//  Copyright (c) 2013年 王 楚江. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Down_hkAppDelegate : NSObject <NSApplicationDelegate,NSWindowDelegate>{
    
    NSStatusItem *trayItem;
}

@property (assign) IBOutlet NSWindow *window;

@end
