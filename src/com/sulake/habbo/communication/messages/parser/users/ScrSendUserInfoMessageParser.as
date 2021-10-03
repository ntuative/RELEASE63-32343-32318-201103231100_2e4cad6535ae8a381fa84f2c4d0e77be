package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1959:int = 1;
      
      public static const const_1648:int = 2;
       
      
      private var var_999:String;
      
      private var var_2251:int;
      
      private var var_2252:int;
      
      private var var_2246:int;
      
      private var var_2249:int;
      
      private var var_2253:Boolean;
      
      private var var_2138:Boolean;
      
      private var var_2139:int;
      
      private var var_2137:int;
      
      private var var_2247:Boolean;
      
      private var var_2248:int;
      
      private var var_2250:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_999 = param1.readString();
         this.var_2251 = param1.readInteger();
         this.var_2252 = param1.readInteger();
         this.var_2246 = param1.readInteger();
         this.var_2249 = param1.readInteger();
         this.var_2253 = param1.readBoolean();
         this.var_2138 = param1.readBoolean();
         this.var_2139 = param1.readInteger();
         this.var_2137 = param1.readInteger();
         this.var_2247 = param1.readBoolean();
         this.var_2248 = param1.readInteger();
         this.var_2250 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_999;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2251;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2252;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2246;
      }
      
      public function get responseType() : int
      {
         return this.var_2249;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2253;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2138;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2139;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2137;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2247;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2248;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2250;
      }
   }
}
