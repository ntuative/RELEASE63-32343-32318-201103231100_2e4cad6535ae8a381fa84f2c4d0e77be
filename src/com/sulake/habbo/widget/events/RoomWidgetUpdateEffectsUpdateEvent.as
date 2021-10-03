package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_753:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_264:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_753,param2,param3);
         this.var_264 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_264;
      }
   }
}
