package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1870:int;
      
      private var var_2431:String;
      
      private var var_1349:int;
      
      private var var_1250:int;
      
      private var var_1721:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1870 = param1.readInteger();
         this.var_2431 = param1.readString();
         this.var_1349 = param1.readInteger();
         this.var_1250 = param1.readInteger();
         this.var_1721 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1870;
      }
      
      public function get petName() : String
      {
         return this.var_2431;
      }
      
      public function get level() : int
      {
         return this.var_1349;
      }
      
      public function get petType() : int
      {
         return this.var_1250;
      }
      
      public function get breed() : int
      {
         return this.var_1721;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
