package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_224:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2241:int = 0;
      
      private var var_2242:int = 0;
      
      private var var_2238:int = 0;
      
      private var var_2239:Boolean = false;
      
      private var var_2240:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_224,param6,param7);
         this.var_2241 = param1;
         this.var_2242 = param2;
         this.var_2238 = param3;
         this.var_2239 = param4;
         this.var_2240 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2241;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2242;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2238;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2239;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2240;
      }
   }
}
