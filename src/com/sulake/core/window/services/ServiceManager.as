package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2874:uint;
      
      private var var_148:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_239:IWindowContext;
      
      private var var_1203:IMouseDraggingService;
      
      private var var_1207:IMouseScalingService;
      
      private var var_1206:IMouseListenerService;
      
      private var var_1208:IFocusManagerService;
      
      private var var_1204:IToolTipAgentService;
      
      private var var_1205:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2874 = 0;
         this.var_148 = param2;
         this.var_239 = param1;
         this.var_1203 = new WindowMouseDragger(param2);
         this.var_1207 = new WindowMouseScaler(param2);
         this.var_1206 = new WindowMouseListener(param2);
         this.var_1208 = new FocusManager(param2);
         this.var_1204 = new WindowToolTipAgent(param2);
         this.var_1205 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1203 != null)
         {
            this.var_1203.dispose();
            this.var_1203 = null;
         }
         if(this.var_1207 != null)
         {
            this.var_1207.dispose();
            this.var_1207 = null;
         }
         if(this.var_1206 != null)
         {
            this.var_1206.dispose();
            this.var_1206 = null;
         }
         if(this.var_1208 != null)
         {
            this.var_1208.dispose();
            this.var_1208 = null;
         }
         if(this.var_1204 != null)
         {
            this.var_1204.dispose();
            this.var_1204 = null;
         }
         if(this.var_1205 != null)
         {
            this.var_1205.dispose();
            this.var_1205 = null;
         }
         this.var_148 = null;
         this.var_239 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1203;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1207;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1206;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1208;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1204;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1205;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
