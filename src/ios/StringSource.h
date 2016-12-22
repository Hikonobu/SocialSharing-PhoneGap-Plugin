#import <Foundation/Foundation.h>

@interface StringSource : NSObject  <UIActivityItemSource>

-(id)initWithText:(NSString *)text subject:(NSString *)subject;

@end
