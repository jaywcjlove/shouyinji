//
//  WebViewRadio.m
//  网络收音机
//
//  Created by kenny.wang on 13-11-20.
//  Copyright (c) 2013年 王 楚江. All rights reserved.
//

#import "WebViewRadio.h"

@implementation WebViewRadio


-(void)frameSkinTheme:(NSWindow *)window{
    WebView *webView = [[WebView alloc]init];
    [webView setFrameLoadDelegate:self];
    [webView setMainFrameURL:@"http://www.qingtin.com/"];
    [window setContentView:webView];
}

-(void)webView:(WebView *)sender didCommitLoadForFrame:(WebFrame *)frame{
    [sender stringByEvaluatingJavaScriptFromString:@"var style = document.createElement('style');"
     "var str_css = '#cproIframe2holder,#cproIframe2,#about,#skin,#bannerload,.qmoongreen,.ask,#bdshare,#bdr,#site{display:none;}#bd{margin:0 0 0 0;width:auto;height:auto;padding:0 0 0 0;background: none;background:none !important;}#bdl{padding:0;}body,html{overflow: hidden;}';"
     "style.type = 'text/css';"
     "style.textContent = str_css;"
     "document.getElementsByTagName('HEAD').item(0).appendChild(style);"];
    
    
    [sender stringByEvaluatingJavaScriptFromString:@"var script = document.createElement('script');"
     "script.type = 'text/javascript';"
     "script.text = \"function myFunction() { "
        "var plugNo=document.getElementById('player');"
    // "plugNo.innerHTML='缺少插件'"
     "plugNo.innerHTML='<a href=http://www.telestream.net/flip4mac-wmv/en-US/play-wmv-in-safari.htm>需要安装Flip4Mac</a>'"
     "}\";"
     "document.getElementsByTagName('head')[0].appendChild(script);"];
    [sender stringByEvaluatingJavaScriptFromString:@"window.onload=function(){myFunction();}"];

}

@end
