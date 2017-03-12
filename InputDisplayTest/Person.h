//
//  Person.h
//  InputDisplayTest
//
//  Created by Abdul Haziq on 08/03/2017.
//  Copyright © 2017 Abdul Haziq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *name;
    NSString *fname;
    NSString *address;
    NSString *dob;
}

@property (copy,nonatomic) NSString *name, *fname, *address,*dob;

@end
