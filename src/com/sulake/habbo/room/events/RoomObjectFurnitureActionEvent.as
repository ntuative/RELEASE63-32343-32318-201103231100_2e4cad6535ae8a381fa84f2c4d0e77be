package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_574:String = "ROFCAE_DICE_OFF";
      
      public static const const_440:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_450:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_589:String = "ROFCAE_STICKIE";
      
      public static const const_549:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_512:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_517:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_510:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_544:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_454:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_451:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_513:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_576:String = "ROFCAE_JUKEBOX_DISPOSE";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
