package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_340:int;
      
      private var var_686:Boolean;
      
      private var var_923:String;
      
      private var _ownerName:String;
      
      private var var_2130:int;
      
      private var var_2129:int;
      
      private var var_2132:int;
      
      private var var_1582:String;
      
      private var var_2128:int;
      
      private var var_2131:Boolean;
      
      private var var_717:int;
      
      private var var_1309:int;
      
      private var var_2133:String;
      
      private var var_837:Array;
      
      private var var_2134:RoomThumbnailData;
      
      private var var_2127:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_837 = new Array();
         super();
         this.var_340 = param1.readInteger();
         this.var_686 = param1.readBoolean();
         this.var_923 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2130 = param1.readInteger();
         this.var_2129 = param1.readInteger();
         this.var_2132 = param1.readInteger();
         this.var_1582 = param1.readString();
         this.var_2128 = param1.readInteger();
         this.var_2131 = param1.readBoolean();
         this.var_717 = param1.readInteger();
         this.var_1309 = param1.readInteger();
         this.var_2133 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_837.push(_loc4_);
            _loc3_++;
         }
         this.var_2134 = new RoomThumbnailData(param1);
         this.var_2127 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_837 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_340;
      }
      
      public function get event() : Boolean
      {
         return this.var_686;
      }
      
      public function get roomName() : String
      {
         return this.var_923;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2130;
      }
      
      public function get userCount() : int
      {
         return this.var_2129;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2132;
      }
      
      public function get description() : String
      {
         return this.var_1582;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2128;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2131;
      }
      
      public function get score() : int
      {
         return this.var_717;
      }
      
      public function get categoryId() : int
      {
         return this.var_1309;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2133;
      }
      
      public function get tags() : Array
      {
         return this.var_837;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2134;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2127;
      }
   }
}
