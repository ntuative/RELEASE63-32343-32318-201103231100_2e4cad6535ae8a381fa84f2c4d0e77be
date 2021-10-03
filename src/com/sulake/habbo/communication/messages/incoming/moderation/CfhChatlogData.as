package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1727:int;
      
      private var var_2428:int;
      
      private var var_1540:int;
      
      private var var_2419:int;
      
      private var var_115:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1727 = param1.readInteger();
         this.var_2428 = param1.readInteger();
         this.var_1540 = param1.readInteger();
         this.var_2419 = param1.readInteger();
         this.var_115 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1727);
      }
      
      public function get callId() : int
      {
         return this.var_1727;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2428;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1540;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2419;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_115;
      }
   }
}
