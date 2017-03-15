//
//  TableViewController.h
//  InputDisplayTest
//
//  Created by Abdul Haziq on 09/03/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController
 

@property (weak, nonatomic) IBOutlet UITableView *NextPageTableView;

@property (nonatomic, strong) NSMutableArray* persons;
@property (weak, nonatomic) NSString *myText;

@end
