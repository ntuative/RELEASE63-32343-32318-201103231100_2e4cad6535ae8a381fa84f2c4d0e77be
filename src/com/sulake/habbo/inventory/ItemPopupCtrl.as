package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1163:int = 1;
      
      public static const const_533:int = 2;
      
      private static const const_968:int = 5;
      
      private static const const_1358:int = 250;
      
      private static const const_1360:int = 100;
      
      private static const const_1359:int = 180;
      
      private static const const_1357:int = 200;
       
      
      private var var_372:Timer;
      
      private var var_371:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_83:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_1844:int = 2;
      
      private var var_783:BitmapData;
      
      private var var_971:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_372 = new Timer(const_1358,1);
         this.var_371 = new Timer(const_1360,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_83 = param1;
         this.var_83.visible = false;
         this._assets = param2;
         this.var_372.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_371.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_971 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_783 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_372 != null)
         {
            this.var_372.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_372.stop();
            this.var_372 = null;
         }
         if(this.var_371 != null)
         {
            this.var_371.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_371.stop();
            this.var_371 = null;
         }
         this._assets = null;
         this.var_83 = null;
         this._parent = null;
         this.var_783 = null;
         this.var_971 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_83 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_83);
         }
         this._parent = param1;
         this.var_1844 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_83.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_83.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1359,param3.width),Math.min(const_1357,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_83.width - _loc6_.width) / 2;
            this.var_83.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_371.reset();
         this.var_372.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_83.visible = true;
         this._parent.addChild(this.var_83);
         this.refreshArrow(this.var_1844);
         switch(this.var_1844)
         {
            case const_1163:
               this.var_83.x = -1 * this.var_83.width - const_968;
               break;
            case const_533:
               this.var_83.x = this._parent.width + const_968;
         }
         this.var_83.y = (this._parent.height - this.var_83.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_83.visible = false;
         this.var_371.reset();
         this.var_372.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_83);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_371.reset();
         this.var_372.reset();
         this.var_372.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_371.reset();
         this.var_372.reset();
         this.var_371.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_83 == null || this.var_83.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_83.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1163:
               _loc2_.bitmap = this.var_971.clone();
               _loc2_.width = this.var_971.width;
               _loc2_.height = this.var_971.height;
               _loc2_.y = (this.var_83.height - this.var_971.height) / 2;
               _loc2_.x = this.var_83.width - 1;
               break;
            case const_533:
               _loc2_.bitmap = this.var_783.clone();
               _loc2_.width = this.var_783.width;
               _loc2_.height = this.var_783.height;
               _loc2_.y = (this.var_83.height - this.var_783.height) / 2;
               _loc2_.x = -1 * this.var_783.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
