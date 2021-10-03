package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_152:String = "ROE_MOUSE_CLICK";
      
      public static const const_1973:String = "ROE_MOUSE_ENTER";
      
      public static const const_466:String = "ROE_MOUSE_MOVE";
      
      public static const const_1970:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1871:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1628:String = "";
      
      private var var_2346:Boolean;
      
      private var var_2347:Boolean;
      
      private var var_2349:Boolean;
      
      private var var_2348:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1628 = param2;
         this.var_2346 = param5;
         this.var_2347 = param6;
         this.var_2349 = param7;
         this.var_2348 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1628;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2346;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2347;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2349;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2348;
      }
   }
}
