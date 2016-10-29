//
//  ViewController.m
//  ScrollViewExample
//
//  Created by Taqtile on 10/29/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIView *greenView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *blueViewHeightConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialSetup];
}

- (void)initialSetup {
    self.label.numberOfLines = 0;
}

#pragma  mark - Actions
- (IBAction)didTouchAppendText:(id)sender {
    self.label.text = [self.label.text stringByAppendingString:@" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et iaculis neque. Nam sodales volutpat turpis, at adipiscing sem ornare sed. Nullam molestie ac lorem sit amet viverra. Etiam blandit nibh nisi, quis sodales lectus rhoncus fringilla. Nam velit orci, auctor vel mollis et, lobortis in quam. Vivamus vehicula commodo dolor. Quisque nec nunc vitae nisl ornare tempor. Donec semper nisl ac nisl ullamcorper volutpat. Donec in iaculis nisl, vel volutpat tellus. Curabitur sit amet ultricies libero, in tempus nulla. Quisque id nunc sed sapien eleifend faucibus eget vitae neque. \n"];
}

- (IBAction)didTouchIncreaseBlueView:(id)sender {
    self.blueViewHeightConstraint.constant = self.blueViewHeightConstraint.constant + 50;
}

@end
