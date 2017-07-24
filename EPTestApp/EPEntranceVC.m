//
//  EPEntranceVC.m
//  EPTestApp
//
//  Created by Viacheslav Obremsky on 7/24/17.
//  Copyright © 2017 Viacheslav Obremsky. All rights reserved.
//

#import "EPEntranceVC.h"

@interface EPEntranceVC ()

@end

@implementation EPEntranceVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)didTapContinue:(id)sender {
    
    UIViewController* mainVC = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"EPMainVC"];
    [self.navigationController pushViewController:mainVC animated:YES];
}

@end
