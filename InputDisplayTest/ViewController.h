//
//  ViewController.h
//  InputDisplayTest
//
//  Created by Abdul Haziq on 06/03/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UIDatePicker *dobPicker;
    NSMutableArray *persons;
}
@property (weak, nonatomic) IBOutlet UITextField *dateOutput;
@property (nonatomic, strong) NSMutableArray* persons;
@property (weak, nonatomic) IBOutlet UILabel *Name; //nameLabel
@property (weak, nonatomic) IBOutlet UILabel *Fname;
@property (strong, nonatomic) IBOutlet UILabel *dob;
//@property (strong, nonatomic) IBOutlet UIDatePicker *dobPicker;
@property (weak, nonatomic) IBOutlet UILabel *Address;


@property (weak, nonatomic) IBOutlet UITextField *NameTF; //nameTextField
@property (weak, nonatomic) IBOutlet UITextField *FnameTF;
@property (weak, nonatomic) IBOutlet UITextView *AddTF;

//@property (weak, nonatomic) IBOutlet UITextView *output; 
//@property (weak, nonatomic) IBOutlet UITextView *output2;
//@property (weak, nonatomic) IBOutlet UITextView *output3;
//@property (weak, nonatomic) IBOutlet UITextView *output4;


@property (strong, nonatomic) IBOutlet UITableView *NewTableView;


- (IBAction)ViewTableButton:(id)sender;




- (IBAction)ViewBtn:(id)sender;





@end

