package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1254:Boolean;
      
      private var var_1255:Boolean;
      
      private var var_1513:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1254;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1255;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1513;
      }
      
      public function flush() : Boolean
      {
         this.var_1254 = false;
         this.var_1255 = false;
         this.var_1513 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1254 = param1.readBoolean();
         this.var_1255 = param1.readBoolean();
         this.var_1513 = param1.readBoolean();
         return true;
      }
   }
}
