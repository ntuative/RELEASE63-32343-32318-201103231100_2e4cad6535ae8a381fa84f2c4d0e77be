package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2275:Number = 0.0;
      
      private var var_2276:Number = 0.0;
      
      private var var_2720:Number = 0.0;
      
      private var var_2719:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2275 = param1;
         this.var_2276 = param2;
         this.var_2720 = param3;
         this.var_2719 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2275;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2276;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2720;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2719;
      }
   }
}
