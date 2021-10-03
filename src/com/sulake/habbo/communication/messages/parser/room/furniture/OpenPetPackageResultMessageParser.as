package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_356:int = 0;
      
      private var var_2012:int = 0;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_356;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2012;
      }
      
      public function flush() : Boolean
      {
         this.var_356 = 0;
         this.var_2012 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_356 = param1.readInteger();
         this.var_2012 = param1.readInteger();
         return true;
      }
   }
}
