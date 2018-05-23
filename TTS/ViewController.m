//
//  ViewController.m
//  TTS
//
//  Created by 韩陈昊 on 2018/5/22.
//  Copyright © 2018年 韩陈昊. All rights reserved.
//

#import "ViewController.h"
#import "CHTTS.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *input;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)transformVoice:(UIButton *)sender {
    if (self.input.text.length < 1) {
        return;
    }
    sender.enabled = NO;
    [CHTTS speekChinese:self.input.text complete:^{
        sender.enabled = YES;
    }];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   
    [self.view endEditing:YES];
}

@end
