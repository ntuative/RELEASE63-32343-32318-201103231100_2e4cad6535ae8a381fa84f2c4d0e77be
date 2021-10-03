package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2281:int;
      
      private var var_1521:String;
      
      private var _objId:int;
      
      private var var_1954:int;
      
      private var _category:int;
      
      private var var_2074:String;
      
      private var var_2298:Boolean;
      
      private var var_2299:Boolean;
      
      private var var_2297:Boolean;
      
      private var var_2103:Boolean;
      
      private var var_2143:int;
      
      private var var_1310:int;
      
      private var var_1715:String = "";
      
      private var var_2082:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2281 = param1;
         this.var_1521 = param2;
         this._objId = param3;
         this.var_1954 = param4;
         this._category = param5;
         this.var_2074 = param6;
         this.var_2298 = param7;
         this.var_2299 = param8;
         this.var_2297 = param9;
         this.var_2103 = param10;
         this.var_2143 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1715 = param1;
         this.var_1310 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2281;
      }
      
      public function get itemType() : String
      {
         return this.var_1521;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1954;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2074;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2298;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2299;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2297;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2103;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2143;
      }
      
      public function get slotId() : String
      {
         return this.var_1715;
      }
      
      public function get songId() : int
      {
         return this.var_2082;
      }
      
      public function get extra() : int
      {
         return this.var_1310;
      }
   }
}
