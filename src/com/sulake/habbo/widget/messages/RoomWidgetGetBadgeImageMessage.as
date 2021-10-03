package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_785:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_293:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_785);
         this.var_293 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_293;
      }
   }
}
