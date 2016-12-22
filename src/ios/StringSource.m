#import "StringSource.h"

@implementation StringSource
{
    NSString *_text, *_subject;
}

-(id)initWithText:(NSString *)text subject:(NSString *)subject
{
    self = [super init];
    if (self) {
        _text = text;
        _subject = subject;
    }
    return self;
}

#pragma mark - UIActivityItemSource

-(id)activityViewController:(UIActivityViewController *)activityViewController itemForActivityType:(NSString *)activityType
{
    NSLog(activityType);
    // if ([activityType isEqualToString:UIActivityTypePostToTwitter]) {
    //     return [NSString stringWithFormat:@"%@ #%@", _text, _hashTag];
    // }
    return _text;
}

-(id)activityViewControllerPlaceholderItem:(UIActivityViewController *)activityViewController
{
    return _text;
}

@end
