package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2074:String;
      
      protected var var_1310:Number;
      
      protected var var_2828:Boolean;
      
      protected var var_2829:Boolean;
      
      protected var var_2577:Boolean;
      
      protected var var_2144:Boolean;
      
      protected var var_2830:int;
      
      protected var var_2580:int;
      
      protected var var_2582:int;
      
      protected var var_2578:int;
      
      protected var var_1715:String;
      
      protected var var_2082:int;
      
      protected var var_961:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2577 = param5;
         this.var_2829 = param6;
         this.var_2828 = param7;
         this.var_2144 = param8;
         this.var_2074 = param9;
         this.var_1310 = param10;
         this.var_2830 = param11;
         this.var_2580 = param12;
         this.var_2582 = param13;
         this.var_2578 = param14;
         this.var_1715 = param15;
         this.var_2082 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2074;
      }
      
      public function get extra() : Number
      {
         return this.var_1310;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2828;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2829;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2577;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2144;
      }
      
      public function get expires() : int
      {
         return this.var_2830;
      }
      
      public function get creationDay() : int
      {
         return this.var_2580;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2582;
      }
      
      public function get creationYear() : int
      {
         return this.var_2578;
      }
      
      public function get slotId() : String
      {
         return this.var_1715;
      }
      
      public function get songId() : int
      {
         return this.var_2082;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_961 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_961;
      }
   }
}
