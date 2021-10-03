package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1577:int = 0;
      
      private var var_1578:int = 0;
      
      private var var_2634:int = 0;
      
      private var var_2635:Boolean = false;
      
      private var var_2138:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1577 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1578 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2634 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2635 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2138 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1577;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1578;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2634;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2635;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2138;
      }
   }
}
