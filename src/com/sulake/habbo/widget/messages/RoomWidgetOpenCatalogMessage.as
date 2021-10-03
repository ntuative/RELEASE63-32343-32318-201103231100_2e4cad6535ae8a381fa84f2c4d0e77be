package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_407:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1237:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1100:String = "RWOCM_PIXELS";
      
      public static const const_1156:String = "RWOCM_CREDITS";
       
      
      private var var_2613:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_407);
         this.var_2613 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2613;
      }
   }
}
