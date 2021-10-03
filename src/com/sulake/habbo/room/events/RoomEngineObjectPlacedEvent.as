package com.sulake.habbo.room.events
{
   public class RoomEngineObjectPlacedEvent extends RoomEngineObjectEvent
   {
       
      
      private var var_1910:String = "";
      
      private var _x:int = 0;
      
      private var var_151:int = 0;
      
      private var _direction:int = 0;
      
      private var var_2245:Boolean = false;
      
      public function RoomEngineObjectPlacedEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:Boolean, param11:Boolean = false, param12:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param11,param12);
         this.var_1910 = param6;
         this._x = param7;
         this.var_151 = param8;
         this._direction = param9;
         this.var_2245 = param10;
      }
      
      public function get wallLocation() : String
      {
         return this.var_1910;
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_151;
      }
      
      public function get direction() : int
      {
         return this._direction;
      }
      
      public function get placedInRoom() : Boolean
      {
         return this.var_2245;
      }
   }
}
