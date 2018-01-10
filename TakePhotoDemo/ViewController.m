//
//  ViewController.m
//  TakePhotoDemo
//
//  Created by ios on 2018/1/4.
//  Copyright © 2018年 LuoDong. All rights reserved.
//

#import "ViewController.h"
#import "TakePhoto.h"
@interface ViewController ()
{
    UIImageView *icon;
}
@end
#define SCREENW [UIScreen mainScreen].bounds.size.width
#define SCREENH [UIScreen mainScreen].bounds.size.height
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    icon = [[UIImageView alloc]initWithFrame:CGRectMake((SCREENW-60)/2, 100, 60, 60)];
    icon.layer.masksToBounds = YES;
    icon.layer.cornerRadius = 30;
    [self.view addSubview:icon];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake((SCREENW-100)/2, 180, 100, 50);
    [btn setTitle:@"更换头像" forState:0];
    [btn setTitleColor:[UIColor blueColor] forState:0];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
}

-(void)clickBtn{
    
    [TakePhoto sharePictureWith:self andWith:^(UIImage *image) {
        icon.image = image;
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
