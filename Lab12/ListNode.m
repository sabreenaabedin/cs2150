 @interface ListNode : NSObject 
 @property int datum;
 @property ListNode* prev; 
 @ end
 
 @implementation ListNode
 
 @synthesize datum, prev;
 
 - (int) datum {
      return datum;
  }
 - (ListNode *) prev {
      return prev;
  }
 
 @end