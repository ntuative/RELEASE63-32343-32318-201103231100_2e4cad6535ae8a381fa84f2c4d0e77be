package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2482:int;
      
      private var var_2522:int;
      
      private var var_1059:int;
      
      private var var_1061:int;
      
      private var _activityPointType:int;
      
      private var var_2521:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2482 = param1.readInteger();
         this.var_2522 = param1.readInteger();
         this.var_1059 = param1.readInteger();
         this.var_1061 = param1.readInteger();
         this._activityPointType = param1.readInteger();
         this.var_2521 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2482;
      }
      
      public function get charges() : int
      {
         return this.var_2522;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1059;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1061;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2521;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
   }
}
