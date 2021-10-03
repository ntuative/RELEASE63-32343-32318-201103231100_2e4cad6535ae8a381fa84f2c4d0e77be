package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2778:int;
      
      private var var_2777:int;
      
      private var var_2779:int;
      
      private var var_2780:int;
      
      private var var_102:Array;
      
      private var var_230:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_102 = new Array();
         this.var_230 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2778 = param1.readInteger();
         this.var_2777 = param1.readInteger();
         this.var_2779 = param1.readInteger();
         this.var_2780 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_102.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_230.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2778;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2777;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2779;
      }
      
      public function get categories() : Array
      {
         return this.var_102;
      }
      
      public function get friends() : Array
      {
         return this.var_230;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2780;
      }
   }
}
