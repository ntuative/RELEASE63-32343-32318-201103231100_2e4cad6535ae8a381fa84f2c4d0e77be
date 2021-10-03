package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_606:String;
      
      private var var_907:String;
      
      private var var_2336:String;
      
      private var var_1704:String;
      
      private var var_2334:int;
      
      private var var_2340:String;
      
      private var var_2338:int;
      
      private var var_2339:int;
      
      private var var_2337:int;
      
      private var _respectLeft:int;
      
      private var var_801:int;
      
      private var var_2335:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_606 = param1.readString();
         this.var_907 = param1.readString();
         this.var_2336 = param1.readString();
         this.var_1704 = param1.readString();
         this.var_2334 = param1.readInteger();
         this.var_2340 = param1.readString();
         this.var_2338 = param1.readInteger();
         this.var_2339 = param1.readInteger();
         this.var_2337 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_801 = param1.readInteger();
         this.var_2335 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_606;
      }
      
      public function get sex() : String
      {
         return this.var_907;
      }
      
      public function get customData() : String
      {
         return this.var_2336;
      }
      
      public function get realName() : String
      {
         return this.var_1704;
      }
      
      public function get tickets() : int
      {
         return this.var_2334;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2340;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2338;
      }
      
      public function get directMail() : int
      {
         return this.var_2339;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2337;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_801;
      }
      
      public function get identityId() : int
      {
         return this.var_2335;
      }
   }
}
