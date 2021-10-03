package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_522:uint = 0;
      
      public static const const_1700:uint = 1;
      
      public static const const_1984:int = 0;
      
      public static const const_1967:int = 1;
      
      public static const const_1962:int = 2;
      
      public static const const_1800:int = 3;
      
      public static const const_1524:int = 4;
      
      public static const const_375:int = 5;
      
      public static var var_395:IEventQueue;
      
      private static var var_659:IEventProcessor;
      
      private static var var_1942:uint = const_522;
      
      private static var stage:Stage;
      
      private static var var_154:IWindowRenderer;
       
      
      private var var_2698:EventProcessorState;
      
      private var var_2696:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_213:DisplayObjectContainer;
      
      protected var var_2893:Boolean = true;
      
      protected var var_1300:Error;
      
      protected var var_2083:int = -1;
      
      protected var var_1306:IInternalWindowServices;
      
      protected var var_1562:IWindowParser;
      
      protected var var_2848:IWindowFactory;
      
      protected var var_149:IDesktopWindow;
      
      protected var var_1561:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_556:Boolean = false;
      
      private var var_2697:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_154 = param2;
         this._localization = param4;
         this.var_213 = param5;
         this.var_1306 = new ServiceManager(this,param5);
         this.var_2848 = param3;
         this.var_1562 = new WindowParser(this);
         this.var_2696 = param7;
         if(!stage)
         {
            if(this.var_213 is Stage)
            {
               stage = this.var_213 as Stage;
            }
            else if(this.var_213.stage)
            {
               stage = this.var_213.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_149 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_213.addChild(this.var_149.getDisplayObject());
         this.var_213.doubleClickEnabled = true;
         this.var_213.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2698 = new EventProcessorState(var_154,this.var_149,this.var_149,null,this.var_2696);
         inputMode = const_522;
         this.var_1561 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1942;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_395)
         {
            if(var_395 is IDisposable)
            {
               IDisposable(var_395).dispose();
            }
         }
         if(var_659)
         {
            if(var_659 is IDisposable)
            {
               IDisposable(var_659).dispose();
            }
         }
         switch(value)
         {
            case const_522:
               var_395 = new MouseEventQueue(stage);
               var_659 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1700:
               var_395 = new TabletEventQueue(stage);
               var_659 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_522;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_213.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_213.removeChild(IGraphicContextHost(this.var_149).getGraphicContext(true) as DisplayObject);
            this.var_149.destroy();
            this.var_149 = null;
            this.var_1561.destroy();
            this.var_1561 = null;
            if(this.var_1306 is IDisposable)
            {
               IDisposable(this.var_1306).dispose();
            }
            this.var_1306 = null;
            this.var_1562.dispose();
            this.var_1562 = null;
            var_154 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1300;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2083;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1300 = param2;
         this.var_2083 = param1;
         if(this.var_2893)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1300 = null;
         this.var_2083 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1306;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1562;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2848;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_149;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_149.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1524,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1561;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_149,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_149)
         {
            this.var_149 = null;
         }
         if(param1.state != WindowState.const_579)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_154.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_556 = true;
         if(this.var_1300)
         {
            throw this.var_1300;
         }
         var_659.process(this.var_2698,var_395);
         this.var_556 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2697 = true;
         var_154.update(param1);
         this.var_2697 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_149 != null && !this.var_149.disposed)
         {
            if(this.var_213 is Stage)
            {
               this.var_149.width = Stage(this.var_213).stageWidth;
               this.var_149.height = Stage(this.var_213).stageHeight;
            }
            else
            {
               this.var_149.width = this.var_213.width;
               this.var_149.height = this.var_213.height;
            }
         }
      }
   }
}
