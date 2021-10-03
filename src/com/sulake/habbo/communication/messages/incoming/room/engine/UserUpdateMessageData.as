package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_151:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_2308:Number = 0;
      
      private var var_2311:Number = 0;
      
      private var var_2310:Number = 0;
      
      private var var_2312:Number = 0;
      
      private var var_378:int = 0;
      
      private var var_2280:int = 0;
      
      private var var_330:Array;
      
      private var var_2309:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_330 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_151 = param3;
         this.var_152 = param4;
         this.var_2308 = param5;
         this.var_378 = param6;
         this.var_2280 = param7;
         this.var_2311 = param8;
         this.var_2310 = param9;
         this.var_2312 = param10;
         this.var_2309 = param11;
         this.var_330 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_151;
      }
      
      public function get z() : Number
      {
         return this.var_152;
      }
      
      public function get localZ() : Number
      {
         return this.var_2308;
      }
      
      public function get targetX() : Number
      {
         return this.var_2311;
      }
      
      public function get targetY() : Number
      {
         return this.var_2310;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2312;
      }
      
      public function get dir() : int
      {
         return this.var_378;
      }
      
      public function get dirHead() : int
      {
         return this.var_2280;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2309;
      }
      
      public function get actions() : Array
      {
         return this.var_330.slice();
      }
   }
}
