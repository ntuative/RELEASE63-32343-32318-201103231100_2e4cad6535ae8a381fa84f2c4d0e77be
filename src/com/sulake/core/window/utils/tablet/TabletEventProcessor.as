package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2916:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_149 = param1.desktop;
         var_74 = param1.var_1286 as WindowController;
         var_176 = param1.var_1289 as WindowController;
         var_154 = param1.renderer;
         var_839 = param1.var_1288;
         param2.begin();
         param2.end();
         param1.desktop = var_149;
         param1.var_1286 = var_74;
         param1.var_1289 = var_176;
         param1.renderer = var_154;
         param1.var_1288 = var_839;
      }
   }
}
