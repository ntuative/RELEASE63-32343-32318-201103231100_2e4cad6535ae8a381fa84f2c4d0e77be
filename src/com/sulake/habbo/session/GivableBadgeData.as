package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_293:int;
      
      private var var_2798:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_293 = param1;
         this.var_2798 = param2;
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
