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

@property (nonatomic, retain) NSMutableArray* persons;
@property (weak, nonatomic) IBOutlet UITextField *NameTF;
@property (weak, nonatomic) IBOutlet UITextField *FnameTF;
@property (weak, nonatomic) IBOutlet UITextView *AddTF;
@property (weak, nonatomic) IBOutlet UITextField *dateOutput;

@end
