package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1877:Boolean;
      
      private var var_2600:int;
      
      private var var_408:Boolean;
      
      private var var_1218:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1877;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2600;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1218;
      }
      
      public function get owner() : Boolean
      {
         return this.var_408;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1218 != null)
         {
            this.var_1218.dispose();
            this.var_1218 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1877 = param1.readBoolean();
         if(this.var_1877)
         {
            this.var_2600 = param1.readInteger();
            this.var_408 = param1.readBoolean();
         }
         else
         {
            this.var_1218 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
