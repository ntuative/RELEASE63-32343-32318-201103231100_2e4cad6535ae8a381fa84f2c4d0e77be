package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2147:int;
      
      private var var_1743:String;
      
      private var var_2146:String;
      
      private var var_2150:Boolean;
      
      private var var_2148:Boolean;
      
      private var var_2151:int;
      
      private var var_2152:String;
      
      private var var_2149:String;
      
      private var var_1704:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2147 = param1.readInteger();
         this.var_1743 = param1.readString();
         this.var_2146 = param1.readString();
         this.var_2150 = param1.readBoolean();
         this.var_2148 = param1.readBoolean();
         param1.readString();
         this.var_2151 = param1.readInteger();
         this.var_2152 = param1.readString();
         this.var_2149 = param1.readString();
         this.var_1704 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2147;
      }
      
      public function get avatarName() : String
      {
         return this.var_1743;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2146;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2150;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2148;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2151;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2152;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2149;
      }
      
      public function get realName() : String
      {
         return this.var_1704;
      }
   }
}
