package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1182:Boolean;
      
      private var var_2528:int;
      
      private var var_2527:String;
      
      private var var_340:int;
      
      private var var_2526:int;
      
      private var var_2266:String;
      
      private var var_2530:String;
      
      private var var_2529:String;
      
      private var var_837:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_837 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1182 = false;
            return;
         }
         this.var_1182 = true;
         this.var_2528 = int(_loc2_);
         this.var_2527 = param1.readString();
         this.var_340 = int(param1.readString());
         this.var_2526 = param1.readInteger();
         this.var_2266 = param1.readString();
         this.var_2530 = param1.readString();
         this.var_2529 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_837.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2528;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2527;
      }
      
      public function get flatId() : int
      {
         return this.var_340;
      }
      
      public function get eventType() : int
      {
         return this.var_2526;
      }
      
      public function get eventName() : String
      {
         return this.var_2266;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2530;
      }
      
      public function get creationTime() : String
      {
         return this.var_2529;
      }
      
      public function get tags() : Array
      {
         return this.var_837;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1182;
      }
   }
}
