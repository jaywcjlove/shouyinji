//
//  Down_hkAppDelegate.m
//  网络收音机
//
//  Created by kenny.wang on 13-11-20.
//  Copyright (c) 2013年 王 楚江. All rights reserved.
//

#import "Down_hkAppDelegate.h"


#import "WebViewRadio.h"

@implementation Down_hkAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    WebViewRadio *themWeb = [[WebViewRadio alloc]init];
    [themWeb frameSkinTheme:_window];
    
    [[_window standardWindowButton:NSWindowZoomButton] setHidden:YES];
    //[[_window standardWindowButton:NSWindowMiniaturizeButton] setHidden:YES];
    
    
    //[_window standardWindowButton:NSWindowCloseButton]
    
    [NSApp endSheet:_window];
}
- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag
{
	if (flag) {
		return NO;
	}
    else
	{
        [_window makeKeyAndOrderFront:self];
        return YES;
	}
    
}
@end
