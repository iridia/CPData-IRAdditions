//	CPData+IRAdditions.j
//	Evadne Wu at Iridia, 2010
	
	
	
	
	
@implementation CPData (IRAdditions)

+ (CPData) dataWithBase64String:(CPString)inBase64String {
	
	self = [[self alloc] initWithBase64String:inBase64String];
	
}

- (id) initWithBase64String:(CPString)inBase64String {

	self = [super init]; if (self == nil) return nil;

	[self setBase64String:inBase64String];

	return self;

}

- (NSString) base64String {

	return CFData.encodeBase64String([self rawString]);
	
}

- (NSString) base64EncodedDataURIWithMIMEType:(NSString)inMIMEType {
	
	return [CPString stringWithFormat:@"data:%@;charset=utf-8;base64,%@", inMIMEType, [self base64String]];
	
}

- (NSString) uriComponentEncodedDataURIWithMIMEType:(NSString)inMIMEType {
	
	return [CPString stringWithFormat:@"data:%@;charset=utf-8,%@", inMIMEType, encodeURIComponent([self rawString])];
	
}

@end




