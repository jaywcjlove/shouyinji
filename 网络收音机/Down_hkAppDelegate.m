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
    [_window setDelegate:self];
    
    [[_window standardWindowButton:NSWindowZoomButton] setHidden:YES];
    //[[_window standardWindowButton:NSWindowCloseButton] setHidden:YES];
    //[[_window standardWindowButton:NSWindowMiniaturizeButton] setHidden:YES];
    
    
    
    
    
    NSZone *zone = [NSMenu menuZone];
    NSMenu *menu = [[NSMenu allocWithZone:zone] init] ;
    NSMenuItem *item;
    
    item = [menu addItemWithTitle:@"关注我们" action:@selector(testAction:) keyEquivalent:@""];
    item = [menu addItemWithTitle:@"显示收音机" action:@selector(testAction:) keyEquivalent:@""];
    item = [menu addItemWithTitle:@"退出" action:@selector(quitAction:) keyEquivalent:@""];
    [item setTarget:self];
    
    trayItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength];
    [trayItem setMenu:menu];
    [trayItem setHighlightMode:YES];
    //[trayItem setTitle:@""];
    trayItem.image=[NSImage imageNamed:@"radio"];
    
    //[_window standardWindowButton:NSWindowCloseButton]
    //[NSApp hide:_window];
    //[NSApp endSheet:_window];
}
-(BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag{
    NSLog(@"%hhd",flag);
    [_window makeKeyAndOrderFront:nil];
    return YES;
}

-(void)windowWillClose:(NSNotification *)notification{
    //[NSApp hideOtherApplications:_window];
    //[NSApp terminate:self];
    //[NSApp hide:_window];
}


-(IBAction)testAction:(id)sender{
    // [NSApp showWindow:_window];
    [NSApp hideOtherApplications:_window];
    
    [_window makeKeyAndOrderFront:self];
  //  myWindow makeKeyAndOrderFront:self];
    NSLog(@"123123");
    
   // [[NSApplication sharedApplication] windows];
    
    
    for(NSWindow* win in [NSApp windows])
    {
        if([win isMiniaturized])
        {
            [win deminiaturize:self];
        }
    }
    
    [NSApp activateIgnoringOtherApps:YES];
    //[[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"http://e.weibo.com/pc175"]];
}

-(IBAction)quitAction:(id)sender{
    [NSApp terminate:sender];
}

@end
