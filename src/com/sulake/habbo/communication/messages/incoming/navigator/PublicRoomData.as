package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2590:String;
      
      private var var_2377:int;
      
      private var var_2420:int;
      
      private var var_2378:String;
      
      private var var_2750:int;
      
      private var var_1903:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2590 = param1.readString();
         this.var_2377 = param1.readInteger();
         this.var_2420 = param1.readInteger();
         this.var_2378 = param1.readString();
         this.var_2750 = param1.readInteger();
         this.var_1903 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2590;
      }
      
      public function get unitPort() : int
      {
         return this.var_2377;
      }
      
      public function get worldId() : int
      {
         return this.var_2420;
      }
      
      public function get castLibs() : String
      {
         return this.var_2378;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2750;
      }
      
      public function get nodeId() : int
      {
         return this.var_1903;
      }
   }
}
