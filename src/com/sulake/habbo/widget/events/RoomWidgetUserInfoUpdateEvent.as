package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_116:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_146:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1148:int = 2;
      
      public static const const_1011:int = 3;
      
      public static const const_1513:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1701:String = "";
      
      private var var_2271:int;
      
      private var var_2393:int = 0;
      
      private var var_2394:int = 0;
      
      private var var_606:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_254:Array;
      
      private var var_1797:Array;
      
      private var var_1318:int = 0;
      
      private var var_2496:String = "";
      
      private var var_2495:int = 0;
      
      private var var_2497:int = 0;
      
      private var var_1765:Boolean = false;
      
      private var var_1704:String = "";
      
      private var var_2705:Boolean = false;
      
      private var var_2707:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2706:Boolean = false;
      
      private var var_2702:Boolean = false;
      
      private var var_2700:Boolean = false;
      
      private var var_2701:Boolean = false;
      
      private var var_2704:Boolean = false;
      
      private var var_2708:Boolean = false;
      
      private var var_2703:int = 0;
      
      private var var_1768:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_254 = [];
         this.var_1797 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1701 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1701;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2271 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2271;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2393 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2393;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2394 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2394;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_606 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_606;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_254 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_254;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1797;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1797 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1318 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1318;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2496 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2496;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2705 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2705;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2706 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2706;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2702 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2702;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2700 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2700;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2701 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2701;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2704 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2704;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2708 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2708;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2703 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2703;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2707 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2707;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1768 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1768;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2495 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2495;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2497 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2497;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1765 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1765;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1704 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1704;
      }
   }
}
