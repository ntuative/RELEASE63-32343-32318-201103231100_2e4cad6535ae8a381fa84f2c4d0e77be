package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.core.window.events.WindowNotifyEvent;
   import com.sulake.core.window.events.WindowTouchEvent;
   import com.sulake.core.window.graphics.GraphicContext;
   import com.sulake.core.window.graphics.IGraphicContext;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   
   public class TextFieldController extends TextController implements ITextFieldWindow
   {
       
      
      protected var var_1560:uint = 500;
      
      protected var var_1304:String = "";
      
      protected var var_1307:Boolean = false;
      
      protected var var_782:Boolean = false;
      
      public function TextFieldController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         param4 &= -1;
         param4 |= 0;
         var_11 = param6;
         _field = TextField(this.getGraphicContext(true).getDisplayObject());
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         _field.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDownEvent);
         _field.addEventListener(KeyboardEvent.KEY_UP,this.onKeyUpEvent);
         _field.addEventListener(Event.CHANGE,this.onChangeEvent);
         _field.addEventListener(FocusEvent.FOCUS_IN,this.onFocusEvent);
         _field.addEventListener(FocusEvent.FOCUS_OUT,this.onFocusEvent);
         _field.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedEvent);
         var_177 = false;
         this.var_782 = true;
      }
      
      public function get focused() : Boolean
      {
         if(_field)
         {
            if(false)
            {
               return _field.stage.focus == _field;
            }
         }
         return false;
      }
      
      override public function enable() : Boolean
      {
         if(super.enable())
         {
            _field.type = TextFieldType.INPUT;
            return true;
         }
         _field.type = TextFieldType.DYNAMIC;
         return false;
      }
      
      override public function disable() : Boolean
      {
         if(super.disable())
         {
            _field.type = TextFieldType.DYNAMIC;
            return true;
         }
         _field.type = TextFieldType.INPUT;
         return false;
      }
      
      public function get editable() : Boolean
      {
         return true;
      }
      
      public function set editable(param1:Boolean) : void
      {
         _field.type = !!param1 ? "null" : TextFieldType.DYNAMIC;
      }
      
      public function get selectable() : Boolean
      {
         return _field.selectable;
      }
      
      public function set selectable(param1:Boolean) : void
      {
         _field.selectable = param1;
      }
      
      public function set displayAsPassword(param1:Boolean) : void
      {
         _field.displayAsPassword = param1;
      }
      
      public function get displayAsPassword() : Boolean
      {
         return _field.displayAsPassword;
      }
      
      public function set mouseCursorType(param1:uint) : void
      {
      }
      
      public function get mouseCursorType() : uint
      {
         return 0;
      }
      
      public function set toolTipCaption(param1:String) : void
      {
         this.var_1304 = param1 == null ? "" : param1;
      }
      
      public function get toolTipCaption() : String
      {
         return this.var_1304;
      }
      
      public function set toolTipDelay(param1:uint) : void
      {
         this.var_1560 = param1;
      }
      
      public function get toolTipDelay() : uint
      {
         return this.var_1560;
      }
      
      public function setMouseCursorByState(param1:uint, param2:uint) : void
      {
         throw new Error("Unimplemented method!");
      }
      
      public function getMouseCursorByState(param1:uint) : uint
      {
         throw new Error("Unimplemented method!");
      }
      
      public function showToolTip(param1:IToolTipWindow) : void
      {
         throw new Error("Unimplemented method!");
      }
      
      public function hideToolTip() : void
      {
         throw new Error("Unimplemented method!");
      }
      
      override public function set autoSize(param1:String) : void
      {
         super.autoSize = param1;
         this.refreshAutoSize();
      }
      
      public function setSelection(param1:int, param2:int) : void
      {
         _field.setSelection(param1,param2);
      }
      
      public function get selectionBeginIndex() : int
      {
         return _field.selectionBeginIndex;
      }
      
      public function get selectionEndIndex() : int
      {
         return _field.selectionEndIndex;
      }
      
      override public function getGraphicContext(param1:Boolean) : IGraphicContext
      {
         if(param1 && !var_22)
         {
            var_22 = new GraphicContext("GC {" + _name + "}",GraphicContext.const_1174,var_11);
         }
         return var_22;
      }
      
      override public function get caption() : String
      {
         return !!_field ? "null" : "";
      }
      
      override public function dispose() : void
      {
         _context.getWindowServices().getFocusManagerService().removeFocusWindow(this);
         this.var_1307 = false;
         if(_field)
         {
            if(this.focused)
            {
               this.unfocus();
            }
            _field.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDownEvent);
            _field.removeEventListener(KeyboardEvent.KEY_UP,this.onKeyUpEvent);
            _field.removeEventListener(Event.CHANGE,this.onChangeEvent);
            _field.removeEventListener(FocusEvent.FOCUS_IN,this.onFocusEvent);
            _field.removeEventListener(FocusEvent.FOCUS_OUT,this.onFocusEvent);
            _field.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedEvent);
         }
         super.dispose();
      }
      
      override public function set text(param1:String) : void
      {
         super.text = param1;
         this.refreshAutoSize();
      }
      
      override protected function forwardMouseEvent(param1:WindowMouseEvent) : WindowEvent
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_DOWN)
         {
            this.focus();
         }
         return super.forwardMouseEvent(param1);
      }
      
      override protected function forwardTouchEvent(param1:WindowTouchEvent) : WindowEvent
      {
         if(param1.type == WindowTouchEvent.const_518)
         {
            this.focus();
         }
         return super.forwardTouchEvent(param1);
      }
      
      override public function focus() : Boolean
      {
         var _loc1_:Boolean = super.focus();
         if(_loc1_)
         {
            if(_field)
            {
               if(false)
               {
                  if(_field.stage.focus != _field)
                  {
                     _field.stage.focus = _field;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      override public function unfocus() : Boolean
      {
         if(_field)
         {
            if(false)
            {
               if(_field.stage.focus == _field)
               {
                  _field.stage.focus = null;
               }
            }
         }
         return super.unfocus();
      }
      
      override public function update(param1:WindowController, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.update(param1,param2);
         switch(param2.type)
         {
            case WindowNotifyEvent.const_172:
               if(param1 == this)
               {
                  _field.width = this.width;
                  _field.height = this.height;
               }
         }
         if(param1 == this)
         {
            InteractiveController.processInteractiveWindowEvents(this,param2);
         }
         return _loc3_;
      }
      
      protected function refreshAutoSize() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this.var_782 && autoSize != TextFieldAutoSize.NONE)
         {
            if(false)
            {
               _loc1_ = _field.localToGlobal(new Point(_field.x,_field.y));
               _loc2_ = new Point();
               getGlobalPosition(_loc2_);
               _loc3_ = new Point(_loc1_.x - _loc2_.x,_loc1_.y - _loc2_.y);
               setRectangle(var_11.x + _loc3_.x,var_11.y + _loc3_.y,_field.width,_field.height);
            }
         }
      }
      
      override protected function refreshTextImage(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         if(false)
         {
            if(autoSize != TextFieldAutoSize.NONE)
            {
               width = _field.width;
               _loc2_ = true;
            }
            else
            {
               _field.width = width;
            }
         }
         if(false)
         {
            if(autoSize != TextFieldAutoSize.NONE)
            {
               height = _field.height;
               _loc2_ = true;
            }
            else
            {
               _field.height = height;
            }
         }
         if(!_loc2_ && !param1)
         {
            dispatchEvent(new WindowEvent(WindowEvent.const_46,this,null));
         }
      }
      
      private function onKeyDownEvent(param1:KeyboardEvent) : void
      {
         var event:KeyboardEvent = param1;
         try
         {
            this.update(this,event);
         }
         catch(e:Error)
         {
            _context.handleError(WindowContext.const_375,e);
         }
      }
      
      private function onKeyUpEvent(param1:KeyboardEvent) : void
      {
         var event:KeyboardEvent = param1;
         try
         {
            this.update(this,event);
         }
         catch(e:Error)
         {
            _context.handleError(WindowContext.const_375,e);
         }
      }
      
      private function onChangeEvent(param1:Event) : void
      {
         var event:Event = param1;
         try
         {
            this.refreshAutoSize();
            this.update(this,event);
         }
         catch(e:Error)
         {
            _context.handleError(WindowContext.const_375,e);
         }
      }
      
      private function onFocusEvent(param1:FocusEvent) : void
      {
         var event:FocusEvent = param1;
         try
         {
            if(event.type == FocusEvent.FOCUS_IN)
            {
               if(!getStateFlag(WindowState.const_85))
               {
                  this.focus();
               }
            }
            else if(event.type == FocusEvent.FOCUS_OUT)
            {
               if(getStateFlag(WindowState.const_85))
               {
                  this.unfocus();
               }
            }
         }
         catch(e:Error)
         {
            _context.handleError(WindowContext.const_375,e);
         }
      }
      
      private function onRemovedEvent(param1:Event) : void
      {
         var event:Event = param1;
         try
         {
            if(getStateFlag(WindowState.const_85))
            {
               this.unfocus();
            }
         }
         catch(e:Error)
         {
            _context.handleError(WindowContext.const_375,e);
         }
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = InteractiveController.writeInteractiveWindowProperties(this,super.properties);
         _loc1_.push(true ? new PropertyStruct(PropertyDefaults.const_782,false,PropertyStruct.const_38,true) : PropertyDefaults.const_1616);
         _loc1_.push(this.var_1307 != PropertyDefaults.const_1035 ? new PropertyStruct(PropertyDefaults.const_875,this.var_1307,PropertyStruct.const_38,true) : PropertyDefaults.const_1712);
         _loc1_.push(_field.selectable != PropertyDefaults.const_1007 ? new PropertyStruct(PropertyDefaults.const_787,_field.selectable,PropertyStruct.const_38,true) : PropertyDefaults.const_1500);
         _loc1_.push(_field.displayAsPassword != PropertyDefaults.const_1056 ? new PropertyStruct("display_as_password",_field.displayAsPassword,PropertyStruct.const_38,true) : PropertyDefaults.const_1686);
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         InteractiveController.readInteractiveWindowProperties(this,param1);
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case PropertyDefaults.const_875:
                  this.var_1307 = _loc2_.value as Boolean;
                  if(this.var_1307)
                  {
                     _context.getWindowServices().getFocusManagerService().registerFocusWindow(this);
                  }
                  break;
               case PropertyDefaults.const_787:
                  _field.selectable = _loc2_.value as Boolean;
                  break;
               case PropertyDefaults.const_782:
                  _field.type = !!_loc2_.value ? "null" : TextFieldType.DYNAMIC;
                  break;
               case PropertyDefaults.const_1179:
                  _field.displayAsPassword = _loc2_.value as Boolean;
                  break;
            }
         }
         super.properties = param1;
      }
   }
}
