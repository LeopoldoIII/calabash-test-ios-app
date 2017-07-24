//
//  EPDetailsVC.m
//  EPTestApp
//
//  Created by Viacheslav Obremsky on 7/24/17.
//  Copyright © 2017 Viacheslav Obremsky. All rights reserved.
//

#import "EPDetailsVC.h"

@interface EPDetailsVC ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation EPDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSURLRequest* request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.google.com"]];
    [self.webView loadRequest:request];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.webView stopLoading];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
