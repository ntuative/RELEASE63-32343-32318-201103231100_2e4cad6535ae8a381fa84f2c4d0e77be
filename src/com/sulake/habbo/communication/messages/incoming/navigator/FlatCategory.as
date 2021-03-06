package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1903:int;
      
      private var var_2307:String;
      
      private var var_317:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1903 = param1.readInteger();
         this.var_2307 = param1.readString();
         this.var_317 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1903;
      }
      
      public function get nodeName() : String
      {
         return this.var_2307;
      }
      
      public function get visible() : Boolean
      {
         return this.var_317;
      }
   }
}
