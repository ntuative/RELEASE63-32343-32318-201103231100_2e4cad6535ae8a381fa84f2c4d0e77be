package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2085:int;
      
      private var var_2074:String;
      
      private var var_1680:int;
      
      private var var_396:int;
      
      private var var_2086:int = -1;
      
      private var var_2084:int;
      
      private var var_1745:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2085 = param3;
         this.var_2074 = param4;
         this.var_1680 = param5;
         this.var_396 = param6;
         this.var_2086 = param7;
         this.var_2084 = param8;
         this.var_1745 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2085;
      }
      
      public function get stuffData() : String
      {
         return this.var_2074;
      }
      
      public function get price() : int
      {
         return this.var_1680;
      }
      
      public function get status() : int
      {
         return this.var_396;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2086;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2084;
      }
      
      public function get offerCount() : int
      {
         return this.var_1745;
      }
   }
}
