package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2603:int;
      
      private var var_2601:int;
      
      private var var_2602:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2603 = param1;
         this.var_2601 = param2;
         this.var_2602 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2603,this.var_2601,this.var_2602];
      }
      
      public function dispose() : void
      {
      }
   }
}
