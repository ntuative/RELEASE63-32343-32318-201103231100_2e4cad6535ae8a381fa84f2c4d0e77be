package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1715:int;
      
      private var var_2429:String;
      
      private var var_933:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1715 = param1.readInteger();
         this.var_2429 = param1.readString();
         this.var_933 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1715;
      }
      
      public function get figureString() : String
      {
         return this.var_2429;
      }
      
      public function get gender() : String
      {
         return this.var_933;
      }
   }
}
