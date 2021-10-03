package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1625:String = "WE_CREATE";
      
      public static const const_1580:String = "WE_CREATED";
      
      public static const const_1670:String = "WE_DESTROY";
      
      public static const const_276:String = "WE_DESTROYED";
      
      public static const const_1632:String = "WE_OPEN";
      
      public static const const_1603:String = "WE_OPENED";
      
      public static const const_1654:String = "WE_CLOSE";
      
      public static const const_1658:String = "WE_CLOSED";
      
      public static const const_1536:String = "WE_FOCUS";
      
      public static const const_312:String = "WE_FOCUSED";
      
      public static const const_1639:String = "WE_UNFOCUS";
      
      public static const const_1450:String = "WE_UNFOCUSED";
      
      public static const const_1514:String = "WE_ACTIVATE";
      
      public static const const_1617:String = "WE_ACTIVATED";
      
      public static const const_1650:String = "WE_DEACTIVATE";
      
      public static const const_500:String = "WE_DEACTIVATED";
      
      public static const const_582:String = "WE_SELECT";
      
      public static const const_63:String = "WE_SELECTED";
      
      public static const const_641:String = "WE_UNSELECT";
      
      public static const const_879:String = "WE_UNSELECTED";
      
      public static const const_1815:String = "WE_ATTACH";
      
      public static const const_1897:String = "WE_ATTACHED";
      
      public static const const_1933:String = "WE_DETACH";
      
      public static const const_1926:String = "WE_DETACHED";
      
      public static const const_1563:String = "WE_LOCK";
      
      public static const const_1607:String = "WE_LOCKED";
      
      public static const const_1540:String = "WE_UNLOCK";
      
      public static const const_1680:String = "WE_UNLOCKED";
      
      public static const const_904:String = "WE_ENABLE";
      
      public static const const_310:String = "WE_ENABLED";
      
      public static const const_892:String = "WE_DISABLE";
      
      public static const const_262:String = "WE_DISABLED";
      
      public static const const_1614:String = "WE_RELOCATE";
      
      public static const const_342:String = "WE_RELOCATED";
      
      public static const const_1489:String = "WE_RESIZE";
      
      public static const const_46:String = "WE_RESIZED";
      
      public static const WINDOW_EVENT_MINIMIZE:String = "WE_MINIMIZE";
      
      public static const const_1462:String = "WE_MINIMIZED";
      
      public static const const_1609:String = "WE_MAXIMIZE";
      
      public static const const_1508:String = "WE_MAXIMIZED";
      
      public static const const_1629:String = "WE_RESTORE";
      
      public static const const_1631:String = "WE_RESTORED";
      
      public static const const_1947:String = "WE_ARRANGE";
      
      public static const const_1813:String = "WE_ARRANGED";
      
      public static const const_102:String = "WE_UPDATE";
      
      public static const const_1830:String = "WE_UPDATED";
      
      public static const const_1965:String = "WE_CHILD_RELOCATE";
      
      public static const const_587:String = "WE_CHILD_RELOCATED";
      
      public static const const_1848:String = "WE_CHILD_RESIZE";
      
      public static const const_287:String = "WE_CHILD_RESIZED";
      
      public static const const_1874:String = "WE_CHILD_REMOVE";
      
      public static const const_462:String = "WE_CHILD_REMOVED";
      
      public static const const_1872:String = "WE_PARENT_RELOCATE";
      
      public static const const_1821:String = "WE_PARENT_RELOCATED";
      
      public static const const_2004:String = "WE_PARENT_RESIZE";
      
      public static const const_1558:String = "WE_PARENT_RESIZED";
      
      public static const const_175:String = "WE_OK";
      
      public static const const_845:String = "WE_CANCEL";
      
      public static const const_104:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_581:String = "WE_SCROLL";
      
      public static const const_171:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_463:IWindow;
      
      protected var var_1554:Boolean;
      
      protected var var_1555:Boolean;
      
      private var var_1616:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow = null, param3:IWindow = null, param4:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_463 = param3;
         this.var_1554 = false;
         this.var_1555 = param4;
         super(param1);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = false ? POOL.pop() : new WindowEvent(param1);
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_463 = param3;
         _loc5_.var_1555 = param4;
         _loc5_.var_1616 = false;
         return _loc5_;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_463;
      }
      
      override public function get cancelable() : Boolean
      {
         return this.var_1555;
      }
      
      public function recycle() : void
      {
         if(this.var_1616)
         {
            throw new Error("Event already recycled!");
         }
         this._type = null;
         this.var_463 = null;
         this._window = null;
         this.var_1616 = true;
         this.var_1554 = false;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1554 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1554;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","cancelable","window");
      }
   }
}
