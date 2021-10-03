package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_660:String = "RWUAM_WHISPER_USER";
      
      public static const const_747:String = "RWUAM_IGNORE_USER";
      
      public static const const_758:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_508:String = "RWUAM_KICK_USER";
      
      public static const const_742:String = "RWUAM_BAN_USER";
      
      public static const const_870:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_783:String = "RWUAM_RESPECT_USER";
      
      public static const const_760:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_867:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_864:String = "RWUAM_START_TRADING";
      
      public static const const_762:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_537:String = "RWUAM_KICK_BOT";
      
      public static const const_821:String = "RWUAM_REPORT";
      
      public static const const_559:String = "RWUAM_PICKUP_PET";
      
      public static const const_1687:String = "RWUAM_TRAIN_PET";
      
      public static const const_442:String = " RWUAM_RESPECT_PET";
      
      public static const const_341:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_914:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
