package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1095:String = "M";
      
      public static const const_1542:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_151:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_378:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_907:String = "";
      
      private var var_606:String = "";
      
      private var var_2397:String = "";
      
      private var var_2271:int;
      
      private var var_2393:int = 0;
      
      private var var_2395:String = "";
      
      private var var_2396:int = 0;
      
      private var var_2394:int = 0;
      
      private var var_2498:String = "";
      
      private var var_184:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_184 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_184)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_151;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_184)
         {
            this.var_151 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_152;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_184)
         {
            this.var_152 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_378;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_184)
         {
            this.var_378 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_184)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_184)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_907;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_184)
         {
            this.var_907 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_606;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_184)
         {
            this.var_606 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2397;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_184)
         {
            this.var_2397 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2271;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_184)
         {
            this.var_2271 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2393;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_184)
         {
            this.var_2393 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2395;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_184)
         {
            this.var_2395 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2396;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_184)
         {
            this.var_2396 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2394;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_184)
         {
            this.var_2394 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2498;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_184)
         {
            this.var_2498 = param1;
         }
      }
   }
}
