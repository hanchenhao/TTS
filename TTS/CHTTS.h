//
//  CHTTS.h
//  TTS
//
//  Created by 韩陈昊 on 2018/5/22.
//  Copyright © 2018年 韩陈昊. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHTTS : NSObject
+ (void)speekChinese:(NSString*)chinese complete:(void(^)(void))completeBlock;
+ (void)stop;

@end
