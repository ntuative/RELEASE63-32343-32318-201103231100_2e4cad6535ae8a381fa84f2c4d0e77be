package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1523:String = "WN_CRETAE";
      
      public static const const_1651:String = "WN_CREATED";
      
      public static const const_1039:String = "WN_DESTROY";
      
      public static const const_1225:String = "WN_DESTROYED";
      
      public static const const_1229:String = "WN_OPEN";
      
      public static const const_1066:String = "WN_OPENED";
      
      public static const const_1180:String = "WN_CLOSE";
      
      public static const const_1110:String = "WN_CLOSED";
      
      public static const const_1045:String = "WN_FOCUS";
      
      public static const const_1116:String = "WN_FOCUSED";
      
      public static const const_1105:String = "WN_UNFOCUS";
      
      public static const const_1205:String = "WN_UNFOCUSED";
      
      public static const const_1061:String = "WN_ACTIVATE";
      
      public static const const_372:String = "WN_ACTVATED";
      
      public static const const_1249:String = "WN_DEACTIVATE";
      
      public static const const_1247:String = "WN_DEACTIVATED";
      
      public static const const_435:String = "WN_SELECT";
      
      public static const const_388:String = "WN_SELECTED";
      
      public static const const_725:String = "WN_UNSELECT";
      
      public static const const_692:String = "WN_UNSELECTED";
      
      public static const const_1141:String = "WN_LOCK";
      
      public static const const_1244:String = "WN_LOCKED";
      
      public static const const_1079:String = "WN_UNLOCK";
      
      public static const const_1107:String = "WN_UNLOCKED";
      
      public static const const_1077:String = "WN_ENABLE";
      
      public static const const_750:String = "WN_ENABLED";
      
      public static const const_1046:String = "WN_DISABLE";
      
      public static const const_669:String = "WN_DISABLED";
      
      public static const const_730:String = "WN_RESIZE";
      
      public static const const_172:String = "WN_RESIZED";
      
      public static const const_1026:String = "WN_RELOCATE";
      
      public static const const_519:String = "WN_RELOCATED";
      
      public static const const_1193:String = "WN_MINIMIZE";
      
      public static const const_1169:String = "WN_MINIMIZED";
      
      public static const const_1192:String = "WN_MAXIMIZE";
      
      public static const const_1120:String = "WN_MAXIMIZED";
      
      public static const const_1215:String = "WN_RESTORE";
      
      public static const const_1146:String = "WN_RESTORED";
      
      public static const const_350:String = "WN_CHILD_ADDED";
      
      public static const const_806:String = "WN_CHILD_REMOVED";
      
      public static const const_296:String = "WN_CHILD_RESIZED";
      
      public static const const_316:String = "WN_CHILD_RELOCATED";
      
      public static const WINDOW_NOTIFY_CHILD_ACTIVATED:String = "WN_CHILD_ACTIVATED";
      
      public static const const_481:String = "WN_PARENT_ADDED";
      
      public static const const_1090:String = "WN_PARENT_REMOVED";
      
      public static const const_583:String = "WN_PARENT_RESIZED";
      
      public static const const_1252:String = "WN_PARENT_RELOCATED";
      
      public static const const_677:String = "WN_PARENT_ACTIVATED";
      
      public static const const_491:String = "WN_STATE_UPDATED";
      
      public static const const_571:String = "WN_STYLE_UPDATED";
      
      public static const const_433:String = "WN_PARAM_UPDATED";
      
      public static const UNKNOWN:String = "UNKNOWN";
      
      private static const POOL:Array = [];
       
      
      private var _isRecycled:Boolean;
      
      public function WindowNotifyEvent()
      {
         super("",null,null);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowNotifyEvent
      {
         var _loc5_:WindowNotifyEvent = false ? POOL.pop() : new WindowNotifyEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_463 = param3;
         _loc5_.var_1555 = param4;
         _loc5_._isRecycled = false;
         return _loc5_;
      }
      
      override public function recycle() : void
      {
         if(this._isRecycled)
         {
            throw new Error("Event already recycled!");
         }
         _type = null;
         var_463 = null;
         _window = null;
         this._isRecycled = true;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(type,_window,var_463,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
