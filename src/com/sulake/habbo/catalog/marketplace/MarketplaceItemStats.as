package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2084:int;
      
      private var var_2710:int;
      
      private var var_2709:int;
      
      private var _dayOffsets:Array;
      
      private var var_2007:Array;
      
      private var var_2008:Array;
      
      private var var_2712:int;
      
      private var var_2711:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2084;
      }
      
      public function get offerCount() : int
      {
         return this.var_2710;
      }
      
      public function get historyLength() : int
      {
         return this.var_2709;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2007;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2008;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2712;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2711;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2084 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2710 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2709 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2007 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2008 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2712 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2711 = param1;
      }
   }
}
