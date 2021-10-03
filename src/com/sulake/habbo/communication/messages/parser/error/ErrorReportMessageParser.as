package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1705:int;
      
      private var var_1984:int;
      
      private var var_1985:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1984 = param1.readInteger();
         this.var_1705 = param1.readInteger();
         this.var_1985 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1705 = 0;
         this.var_1984 = 0;
         this.var_1985 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1705;
      }
      
      public function get messageId() : int
      {
         return this.var_1984;
      }
      
      public function get timestamp() : String
      {
         return this.var_1985;
      }
   }
}
