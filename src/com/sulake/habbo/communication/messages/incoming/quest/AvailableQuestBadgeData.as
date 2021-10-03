package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AvailableQuestBadgeData
   {
       
      
      private var var_293:int;
      
      private var var_2798:String;
      
      public function AvailableQuestBadgeData(param1:IMessageDataWrapper)
      {
         super();
         this.var_293 = param1.readInteger();
         this.var_2798 = param1.readString();
      }
      
      public function get badgeId() : int
      {
         return this.var_293;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2798;
      }
   }
}
