package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_724:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_594:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_724);
         this.var_594 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_594;
      }
   }
}
