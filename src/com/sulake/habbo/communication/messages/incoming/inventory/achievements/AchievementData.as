package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1349:int;
      
      private var var_293:String;
      
      private var var_2189:int;
      
      private var var_2188:int;
      
      private var var_1619:int;
      
      private var var_2187:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1349 = param1.readInteger();
         this.var_293 = param1.readString();
         this.var_2189 = param1.readInteger();
         this.var_2188 = param1.readInteger();
         this.var_1619 = param1.readInteger();
         this.var_2187 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_293;
      }
      
      public function get level() : int
      {
         return this.var_1349;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2189;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2188;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1619;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2187;
      }
   }
}
