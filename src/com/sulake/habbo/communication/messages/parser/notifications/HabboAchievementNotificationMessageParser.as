package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1349:int;
      
      private var var_1752:int;
      
      private var var_2188:int;
      
      private var var_1619:int;
      
      private var var_1350:int;
      
      private var var_2352:String = "";
      
      private var var_2351:String = "";
      
      private var var_2353:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1349 = param1.readInteger();
         this.var_2352 = param1.readString();
         this.var_1752 = param1.readInteger();
         this.var_2188 = param1.readInteger();
         this.var_1619 = param1.readInteger();
         this.var_1350 = param1.readInteger();
         this.var_2353 = param1.readInteger();
         this.var_2351 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1349;
      }
      
      public function get points() : int
      {
         return this.var_1752;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2188;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1619;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1350;
      }
      
      public function get badgeID() : String
      {
         return this.var_2352;
      }
      
      public function get achievementID() : int
      {
         return this.var_2353;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2351;
      }
   }
}
