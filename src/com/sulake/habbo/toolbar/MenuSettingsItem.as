package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2111:String;
      
      private var var_2110:Array;
      
      private var var_2109:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2111 = param1;
         this.var_2110 = param2;
         this.var_2109 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2111;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2110;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2109;
      }
   }
}
