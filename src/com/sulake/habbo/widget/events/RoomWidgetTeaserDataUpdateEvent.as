package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_572:String = "RWTDUE_TEASER_DATA";
      
      public static const const_624:String = "RWTDUE_GIFT_DATA";
      
      public static const const_807:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_356:int;
      
      private var _data:String;
      
      private var var_396:int;
      
      private var var_190:String;
      
      private var var_2176:String;
      
      private var var_2175:Boolean;
      
      private var var_1530:int = 0;
      
      private var var_2236:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_356;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_396;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2176;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2175;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2236;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1530;
      }
      
      public function set status(param1:int) : void
      {
         this.var_396 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2176 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2175 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2236 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_356 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_190;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_190 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1530 = param1;
      }
   }
}
