package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2084:int;
      
      private var var_2710:int;
      
      private var var_2709:int;
      
      private var _dayOffsets:Array;
      
      private var var_2007:Array;
      
      private var var_2008:Array;
      
      private var var_2712:int;
      
      private var var_2711:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2084 = param1.readInteger();
         this.var_2710 = param1.readInteger();
         this.var_2709 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2007 = [];
         this.var_2008 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2007.push(param1.readInteger());
            this.var_2008.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2711 = param1.readInteger();
         this.var_2712 = param1.readInteger();
         return true;
      }
   }
}
