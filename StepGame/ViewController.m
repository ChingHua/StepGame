//
//  ViewController.m
//  StepGame
//
//  Created by ChingHua on 2015/1/19.
//  Copyright (c) 2015年 NoPay. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
{
    //====== Parse
    PFObject *addInfo;  //用來添加資料
    PFQuery *getInfo;   //用來取得資料
    //
}

//====== User Info
@property (weak, nonatomic) IBOutlet UIImageView *UserImageView;
@property (weak, nonatomic) IBOutlet UILabel *UserNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *UserLVLabel;
@property (weak, nonatomic) IBOutlet UILabel *UserPowerLabel;
@property (weak, nonatomic) IBOutlet UILabel *UserAdwardLabel;
//======

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //====== 抓使用者資料
        //取得某表格(BattleUser)的資訊
    getInfo = [[PFQuery alloc]initWithClassName:@"BattleUser"];  //初始化
    NSLog(@"%@",[getInfo findObjects][0]valueForKey:@"");
    
    
        //使用findObject找到陣列中某列 再用valueforkey找到跟其key對應的值
//    _UserNameLabel.text = [[getInfo findObjects][0]valueForKey:@"UserName"];
//    _UserLVLabel.text = [[getInfo findObjects][0]valueForKey:@"UserLV"];
//    _UserPowerLabel.text = [[getInfo findObjects][0]valueForKey:@"UserPower"];
//    _UserAdwardLabel.text = [[getInfo findObjects][0]valueForKey:@"UserAdward"];
    //====== 抓完資料
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
