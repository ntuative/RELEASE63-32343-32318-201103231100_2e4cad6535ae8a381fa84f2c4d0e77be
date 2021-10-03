package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_678:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1125:String = "inventory_effects";
      
      public static const const_1238:String = "inventory_badges";
      
      public static const const_1453:String = "inventory_clothes";
      
      public static const const_1576:String = "inventory_furniture";
       
      
      private var var_2588:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_678);
         this.var_2588 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2588;
      }
   }
}
