//
//  NamesViewController.h
//  Registration
//
//  Created by Dayanand Deshpande on 24/08/14.
//  Copyright (c) 2014 Jay Deshpande. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeModel.h"

@interface NamesViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, HomeModelProtocol>
@property (weak, nonatomic) IBOutlet UITableView *listTableView;

@end
