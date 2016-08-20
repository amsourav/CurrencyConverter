//
//  ViewController.m
//  CurrencyConverter
//
//  Created by sourav sarkar on 20/08/16.
//  Copyright © 2016 sourav sarkar. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface ViewController () <CRCurrencyRequestDelegate>

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *outputLabelUSD;
@property (weak, nonatomic) IBOutlet UILabel *outputLabelGBP;
@property (weak, nonatomic) IBOutlet UILabel *outputLabelJPY;
@property (nonatomic) CRCurrencyRequest *req;
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
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    [self.req start];
    
    
//    self.outputLabelUSD.text = @"usd";
//    self.outputLabelGBP.text = @"gbp";
//    self.outputLabelJPY.text = @"jpy";
}

- (void) currencyRequest:(CRCurrencyRequest *)req retrievedCurrencies:(CRCurrencyResults *)currencies {
    
    double inputValue = [self.inputField.text doubleValue];
    
    self.convertButton.enabled = YES;
    
    double outputUSD = inputValue * currencies.USD;
    NSString *tempUSD = [NSString stringWithFormat:@"%.2f",outputUSD];
    
    double outputGBP = inputValue * currencies.GBP;
    NSString *tempGBP = [NSString stringWithFormat:@"%.2f",outputGBP];
    
    double outputJPY = inputValue * currencies.JPY;
    NSString *tempJPY = [NSString stringWithFormat:@"%.2f",outputJPY];

    self.outputLabelUSD.text = tempUSD;
    self.outputLabelGBP.text = tempGBP;
    self.outputLabelJPY.text = tempJPY;
    
}

@end
