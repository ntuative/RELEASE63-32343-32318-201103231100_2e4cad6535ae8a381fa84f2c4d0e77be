package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1146:int;
      
      private var var_2090:String;
      
      private var var_2089:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1146 = param1.readInteger();
         this.var_2090 = param1.readString();
         this.var_2089 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1146;
      }
      
      public function get requesterName() : String
      {
         return this.var_2090;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2089;
      }
   }
}
