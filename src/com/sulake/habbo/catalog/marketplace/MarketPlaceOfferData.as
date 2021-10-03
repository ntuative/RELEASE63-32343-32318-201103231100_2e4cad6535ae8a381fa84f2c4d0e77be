package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2085:int;
      
      private var var_2074:String;
      
      private var var_1680:int;
      
      private var var_2084:int;
      
      private var var_2441:int;
      
      private var var_396:int;
      
      private var var_2086:int = -1;
      
      private var var_1745:int;
      
      private var var_46:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2085 = param3;
         this.var_2074 = param4;
         this.var_1680 = param5;
         this.var_396 = param6;
         this.var_2084 = param7;
         this.var_1745 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_46)
         {
            this.var_46.dispose();
            this.var_46 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2084;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_46 != null)
         {
            this.var_46.dispose();
         }
         this.var_46 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2441 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2441;
      }
      
      public function get status() : int
      {
         return this.var_396;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2086;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2086 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1680 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1745;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1745 = param1;
      }
   }
}
