package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1191:int = 1;
      
      public static const const_632:int = 2;
      
      public static const const_895:int = 3;
      
      public static const const_1690:int = 4;
       
      
      private var _index:int;
      
      private var var_2625:String;
      
      private var var_2627:String;
      
      private var var_2628:Boolean;
      
      private var var_2626:String;
      
      private var var_981:String;
      
      private var var_2629:int;
      
      private var var_2129:int;
      
      private var _type:int;
      
      private var var_2292:String;
      
      private var var_988:GuestRoomData;
      
      private var var_987:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2625 = param1.readString();
         this.var_2627 = param1.readString();
         this.var_2628 = param1.readInteger() == 1;
         this.var_2626 = param1.readString();
         this.var_981 = param1.readString();
         this.var_2629 = param1.readInteger();
         this.var_2129 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1191)
         {
            this.var_2292 = param1.readString();
         }
         else if(this._type == const_895)
         {
            this.var_987 = new PublicRoomData(param1);
         }
         else if(this._type == const_632)
         {
            this.var_988 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_988 != null)
         {
            this.var_988.dispose();
            this.var_988 = null;
         }
         if(this.var_987 != null)
         {
            this.var_987.dispose();
            this.var_987 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2625;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2627;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2628;
      }
      
      public function get picText() : String
      {
         return this.var_2626;
      }
      
      public function get picRef() : String
      {
         return this.var_981;
      }
      
      public function get folderId() : int
      {
         return this.var_2629;
      }
      
      public function get tag() : String
      {
         return this.var_2292;
      }
      
      public function get userCount() : int
      {
         return this.var_2129;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_988;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_987;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1191)
         {
            return 0;
         }
         if(this.type == const_632)
         {
            return this.var_988.maxUserCount;
         }
         if(this.type == const_895)
         {
            return this.var_987.maxUsers;
         }
         return 0;
      }
   }
}
