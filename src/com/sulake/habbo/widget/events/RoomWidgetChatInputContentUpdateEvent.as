package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_781:String = "RWWCIDE_CHAT_INPUT_CONTENT";
      
      public static const const_1033:String = "whisper";
      
      public static const const_1634:String = "shout";
       
      
      private var var_2471:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_781,param3,param4);
         this.var_2471 = param1;
         this._userName = param2;
      }
      
      public function get messageType() : String
      {
         return this.var_2471;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
   }
}
