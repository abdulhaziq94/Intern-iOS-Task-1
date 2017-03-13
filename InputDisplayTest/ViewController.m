//
//  ViewController.m
//  InputDisplayTest
//
//  Created by Abdul Haziq on 06/03/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "TableViewController.h"

@interface ViewController()
@end

@implementation ViewController
@synthesize Name, NameTF, Fname, FnameTF, dob, Address, AddTF, persons, NewTableView;



- (void)viewDidLoad {
  
    [super viewDidLoad];// testingpush
    dobPicker = [[UIDatePicker alloc]init];
    dobPicker.datePickerMode = UIDatePickerModeDate;
    [self.dateOutput setInputView:dobPicker];
    
   UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    [toolBar setTintColor:[UIColor grayColor]];
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithTitle: @"Done" style:UIBarButtonItemStyleDone target:self action:@selector(ShowSelectedDate)];
    UIBarButtonItem *space = [[ UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolBar setItems:[NSArray arrayWithObjects:space, doneBtn, nil]];
    [self.dateOutput setInputAccessoryView:toolBar];
    
    persons = [[NSMutableArray alloc]init];
    
    
    self.NewTableView.dataSource = self;


  
//    person = [ NSMutableArray arrayWithObjects:[NameTF text],[FnameTF text],[AddTF text], [_dateOutput text], nil];


    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)ShowSelectedDate{
    NSDateFormatter *formatter = [[ NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd/MM/yyyy"];
    self.dateOutput.text = [NSString stringWithFormat:@" %@",[formatter stringFromDate:dobPicker.date]];
    [self.dateOutput resignFirstResponder];
   
}



- (IBAction)ViewTableButton:(id)sender {

    Person *person = [[Person alloc]init];
    person.name = NameTF.text;
    person.fname = FnameTF.text;
    person.address = AddTF.text;
    person.dob = _dateOutput.text;
    
    [persons addObject:person];
    [self.NewTableView reloadData];
}

- (IBAction)ViewBtn:(id)sender {
    
    

    Person *person = [[Person alloc]init];
    person.name = NameTF.text;
    person.fname = FnameTF.text;
    person.address = AddTF.text;
    person.dob = _dateOutput.text;
    
    [persons addObject:person];
    [self.NewTableView reloadData];
    
    

   

//    NSLog(@" %@",person);
//    _output4.text = date;
//    _output.text = input;
//    _output2.text = input2;
//    _output3.text = input3;
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"viewPersons"]) {
        
        
        NSIndexPath *indexPath = [self.NewTableView indexPathForSelectedRow];
        TableViewController *tableViewController = segue.destinationViewController;
        tableViewController.NextPageTableView = [persons objectAtIndex:indexPath.row];
    
      
    }
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return persons.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
      return 4;
    
}

- (UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    Person *person = self.persons[indexPath.section];
    if (indexPath.row == 0) {
        cell.textLabel.text = person.name;
    } else if(indexPath.row == 1){
        cell.textLabel.text = person.fname;
    }else if (indexPath.row == 2){
        cell.textLabel.text = person.address;
    }else{
        cell.textLabel.text = person.dob;
    }
    
    return cell;
}





@end
