package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_202:int = 0;
       
      
      private var var_2140:int = 0;
      
      private var var_1316:Dictionary;
      
      private var var_1577:int = 0;
      
      private var var_1578:int = 0;
      
      private var var_2138:Boolean = false;
      
      private var var_2139:int = 0;
      
      private var var_2137:int = 0;
      
      public function Purse()
      {
         this.var_1316 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2140;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2140 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1577;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1577 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1578;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1578 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1577 > 0 || this.var_1578 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2138;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2138 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2139;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2139 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2137;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2137 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1316;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1316 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1316[param1];
      }
   }
}
