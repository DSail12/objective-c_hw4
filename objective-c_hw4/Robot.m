
//  Robot.m
//  objective-c_hw4
//
//  Created by Eugene Zvyagin on 29.10.2023.
//

#import "Robot.h"

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        // Инициализируем начальные координаты в (0, 0)
        _x = 0;
        _y = 0;
    }
    return self;
}

- (void)run:(void (^)(NSString *direction))block {
    if (block) {
        while (1) {
            // Ввод направления с клавиатуры
            char input[255];
            printf("Введите направление (up, down, left, right) или 'finish' для завершения: ");
            fgets(input, 255, stdin);
            NSString *direction = [[NSString stringWithUTF8String:input] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([direction isEqualToString:@"finish"]) {
                break;
            }
            
            // Вызываем переданный блок и передаем ему направление
            block(direction);
            
            // Выводим текущие координаты робота
            NSLog(@"Координаты: (%ld, %ld)", (long)self.x, (long)self.y);
        }
    }
}

@end
