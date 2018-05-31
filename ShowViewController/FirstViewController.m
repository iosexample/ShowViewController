//
//  FirstViewController.m
//  ShowViewController
//
//  Created by dong on 31/5/2018.
//

#import "FirstViewController.h"

@interface FirstViewController ()
{
    BOOL isMenuShow;
}
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomCons;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    isMenuShow = NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showMenuAction:(id)sender {
//    self.bottomCons.constant = 222;
//    [self.view layoutIfNeeded];
    
    __weak __typeof(self) weakSelf = self;
    [UIView animateWithDuration:0.5
                     animations:^{
                         __strong __typeof(weakSelf)strongSelf = weakSelf;
                         strongSelf.bottomCons.constant = strongSelf->isMenuShow ? 222 : 0;
                         [strongSelf.view layoutIfNeeded];
                         strongSelf->isMenuShow = !strongSelf->isMenuShow;
                     }];

}

@end
