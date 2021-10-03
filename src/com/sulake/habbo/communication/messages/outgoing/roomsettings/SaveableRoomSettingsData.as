package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1582:String;
      
      private var var_2130:int;
      
      private var _password:String;
      
      private var var_1309:int;
      
      private var var_2160:int;
      
      private var var_837:Array;
      
      private var var_2158:Array;
      
      private var var_2127:Boolean;
      
      private var var_2159:Boolean;
      
      private var var_2163:Boolean;
      
      private var var_2161:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2127;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2127 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2159;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2159 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2163;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2163 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2161;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2161 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1582;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1582 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2130;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2130 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1309;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1309 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2160;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2160 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_837;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_837 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2158;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2158 = param1;
      }
   }
}
