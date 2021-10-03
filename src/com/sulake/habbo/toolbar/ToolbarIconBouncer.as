package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2668:Number;
      
      private var var_1929:Number;
      
      private var var_1003:Number;
      
      private var var_530:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2668 = param1;
         this.var_1929 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_1003 = param1;
         this.var_530 = 0;
      }
      
      public function update() : void
      {
         this.var_1003 += this.var_1929;
         this.var_530 += this.var_1003;
         if(this.var_530 > 0)
         {
            this.var_530 = 0;
            this.var_1003 = this.var_2668 * -1 * this.var_1003;
         }
      }
      
      public function get location() : Number
      {
         return this.var_530;
      }
   }
}
