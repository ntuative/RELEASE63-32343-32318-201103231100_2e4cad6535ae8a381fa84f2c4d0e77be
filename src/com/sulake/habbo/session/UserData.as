package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_907:String = "";
      
      private var var_606:String = "";
      
      private var var_2397:String = "";
      
      private var var_2271:int;
      
      private var var_2393:int = 0;
      
      private var var_2395:String = "";
      
      private var var_2396:int = 0;
      
      private var var_2394:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2271;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2271 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_907;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_907 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_606;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_606 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2397;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2397 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2393;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2393 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2395;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2395 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2396;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2396 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2394;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2394 = param1;
      }
   }
}
