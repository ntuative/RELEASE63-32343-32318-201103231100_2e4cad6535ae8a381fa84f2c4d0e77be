package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_463:String = "RSVFS_STATUS";
      
      public static const const_563:String = "RSVFS_RECEIVED";
       
      
      private var var_190:String;
      
      private var var_356:int;
      
      private var var_396:int = -1;
      
      private var _shareId:String;
      
      private var var_2176:String;
      
      private var var_2175:Boolean;
      
      private var var_1530:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_396 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_356;
      }
      
      public function get status() : int
      {
         return this.var_396;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2176;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2175;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1530;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_356 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_396 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2176 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2175 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1530 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_190;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_190 = param1;
      }
   }
}
