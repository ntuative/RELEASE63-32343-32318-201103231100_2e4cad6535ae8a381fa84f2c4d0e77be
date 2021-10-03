package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1746:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_199:MsgWithRequestId;
      
      private var var_579:RoomEventData;
      
      private var var_2235:Boolean;
      
      private var var_2225:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2147:int;
      
      private var var_246:GuestRoomData;
      
      private var var_895:PublicRoomShortData;
      
      private var var_2230:int;
      
      private var var_2229:Boolean;
      
      private var var_2233:int;
      
      private var var_2232:Boolean;
      
      private var var_1625:int;
      
      private var var_2227:Boolean;
      
      private var var_1356:Array;
      
      private var var_1355:Array;
      
      private var var_2231:int;
      
      private var var_1357:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1090:Boolean;
      
      private var var_2226:int;
      
      private var var_2228:Boolean;
      
      private var var_2234:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1356 = new Array();
         this.var_1355 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_246 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_246 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_895 = null;
         this.var_246 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_895 = param1.publicSpace;
            this.var_579 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_579 != null)
         {
            this.var_579.dispose();
            this.var_579 = null;
         }
         if(this.var_895 != null)
         {
            this.var_895.dispose();
            this.var_895 = null;
         }
         if(this.var_246 != null)
         {
            this.var_246.dispose();
            this.var_246 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_246 != null)
         {
            this.var_246.dispose();
         }
         this.var_246 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_579 != null)
         {
            this.var_579.dispose();
         }
         this.var_579 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_199 != null && this.var_199 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_199 != null && this.var_199 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_199 != null && this.var_199 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_199 = param1;
         this.var_1090 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_199 = param1;
         this.var_1090 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_199 = param1;
         this.var_1090 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_199 == null)
         {
            return;
         }
         this.var_199.dispose();
         this.var_199 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_199 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_199 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_199 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_579;
      }
      
      public function get avatarId() : int
      {
         return this.var_2147;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2235;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2225;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_246;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_895;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2229;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2233;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1625;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2232;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2226;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2230;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2227;
      }
      
      public function get adIndex() : int
      {
         return this.var_2234;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2228;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2147 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2233 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2229 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2235 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2225 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2232 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1625 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2226 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2230 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2227 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2234 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2228 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1356 = param1;
         this.var_1355 = new Array();
         for each(_loc2_ in this.var_1356)
         {
            if(_loc2_.visible)
            {
               this.var_1355.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1356;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1355;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2231 = param1.limit;
         this.var_1357 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1357 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_246.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_246 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_246.flatId;
         return this.var_1625 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1357 >= this.var_2231;
      }
      
      public function startLoading() : void
      {
         this.var_1090 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1090;
      }
   }
}
