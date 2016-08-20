//
//  ViewController.m
//  CurrencyConverter
//
//  Created by sourav sarkar on 20/08/16.
//  Copyright © 2016 sourav sarkar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *outputLabelUSD;
@property (weak, nonatomic) IBOutlet UILabel *outputLabelGBP;
@property (weak, nonatomic) IBOutlet UILabel *outputLabelJPY;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)convertButtonTapped:(id)sender {
    self.convertButton.enabled = NO;
    self.outputLabelUSD.text = @"usd";
    self.outputLabelGBP.text = @"gbp";
    self.outputLabelJPY.text = @"jpy";
}

@end
