package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2387:int = 0;
      
      private var var_1517:String = "";
      
      private var var_1933:String = "";
      
      private var var_2386:String = "";
      
      private var var_2385:String = "";
      
      private var var_1714:int = 0;
      
      private var var_2389:int = 0;
      
      private var var_2390:int = 0;
      
      private var var_1518:int = 0;
      
      private var var_2388:int = 0;
      
      private var var_1519:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2387 = param1;
         this.var_1517 = param2;
         this.var_1933 = param3;
         this.var_2386 = param4;
         this.var_2385 = param5;
         if(param6)
         {
            this.var_1714 = 1;
         }
         else
         {
            this.var_1714 = 0;
         }
         this.var_2389 = param7;
         this.var_2390 = param8;
         this.var_1518 = param9;
         this.var_2388 = param10;
         this.var_1519 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2387,this.var_1517,this.var_1933,this.var_2386,this.var_2385,this.var_1714,this.var_2389,this.var_2390,this.var_1518,this.var_2388,this.var_1519];
      }
   }
}
