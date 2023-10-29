
//  main.m
//  objective-c_hw4
//
//  Created by Eugene Zvyagin on 29.10.2023.
//
// Kод позволяет вводить направление с клавиатуры в консоли и передает введенное направление в блок,
// чтобы робот двигался в соответствии с указаниями пользователя. Введите "finish" для завершения
// программы.

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc] init];
        
        [robot run:^(NSString *direction) {
            if ([direction isEqualToString:@"up"]) {
                robot.y++;
            } else if ([direction isEqualToString:@"down"]) {
                robot.y--;
            } else if ([direction isEqualToString:@"left"]) {
                robot.x--;
            } else if ([direction isEqualToString:@"right"]) {
                robot.x++;
            }
        }];
    }
    return 0;
}
