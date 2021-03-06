package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ILabelWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.widget.events.RoomWidgetChatUpdateEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   
   public class RoomChatItem
   {
      
      private static const const_1004:Number = 18;
      
      private static const const_622:int = 6;
      
      private static const const_1428:int = 6;
      
      private static const const_1003:int = 35;
      
      private static const const_422:String = "name";
      
      private static const const_986:String = "message";
      
      private static const const_1429:String = "pointer";
      
      private static const const_4:String = "background";
      
      private static var var_391:IRegionWindow;
      
      private static var var_458:IRegionWindow;
      
      private static var var_234:IRegionWindow;
      
      private static var var_459:IRegionWindow;
       
      
      private var _widget:RoomChatWidget;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_80:IHabboLocalizationManager;
      
      private var _window:IRegionWindow;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _id:String;
      
      private var var_2014:String;
      
      private var var_2811:int = 0;
      
      private var var_2810:int = -1;
      
      private var var_1546:int;
      
      private var var_1284:int;
      
      private var var_1036:String;
      
      private var _message:String;
      
      private var var_392:Array;
      
      private var var_825:Array;
      
      private var var_1720:int;
      
      private var var_2015:Number;
      
      private var var_280:BitmapData;
      
      private var var_2812:uint;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_1283:int;
      
      private var var_279:Number = 0;
      
      private var var_2013:Boolean = false;
      
      private var var_826:Number = 0;
      
      private var _x:Number = 0;
      
      private var var_151:Number = 0;
      
      public function RoomChatItem(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IHabboLocalizationManager, param6:String)
      {
         this.var_1036 = new String();
         this._message = new String();
         super();
         this._widget = param1;
         this._windowManager = param2;
         this._assetLibrary = param3;
         this._id = param4;
         this.var_80 = param5;
         this.var_2014 = param6;
         if(!var_234)
         {
            var_234 = this._windowManager.buildFromXML(this._assetLibrary.getAssetByName("bubble_speak").content as XML,1) as IRegionWindow;
            var_234.tags.push("roomchat_bubble");
            var_234.x = 0;
            var_234.y = 0;
            var_234.width = 0;
            var_234.background = true;
            var_234.mouseThreshold = 0;
            var_234.setParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING,true);
         }
         if(!var_458)
         {
            var_458 = this._windowManager.buildFromXML(this._assetLibrary.getAssetByName("bubble_shout").content as XML,1) as IRegionWindow;
            var_458.tags.push("roomchat_bubble");
            var_458.x = 0;
            var_458.y = 0;
            var_458.width = 0;
            var_458.background = true;
            var_458.mouseThreshold = 0;
            var_234.setParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING,true);
         }
         if(!var_459)
         {
            var_459 = this._windowManager.buildFromXML(this._assetLibrary.getAssetByName("bubble_whisper").content as XML,1) as IRegionWindow;
            var_459.tags.push("roomchat_bubble");
            var_459.x = 0;
            var_459.y = 0;
            var_459.width = 0;
            var_459.background = true;
            var_459.mouseThreshold = 0;
            var_234.setParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING,true);
         }
         if(!var_391)
         {
            var_391 = this._windowManager.buildFromXML(this._assetLibrary.getAssetByName("bubble_whisper").content as XML,1) as IRegionWindow;
            var_391.tags.push("roomchat_bubble");
            var_391.x = 0;
            var_391.y = 0;
            var_391.width = 0;
            var_391.background = true;
            var_391.mouseThreshold = 0;
            var_234.setParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING,true);
         }
      }
      
      public function dispose() : void
      {
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
            this._widget = null;
            this._windowManager = null;
            this.var_80 = null;
            this.var_280 = null;
         }
      }
      
      public function define(param1:RoomWidgetChatUpdateEvent) : void
      {
         this.var_1546 = param1.chatType;
         this.var_1284 = param1.userId;
         this.var_1036 = param1.userName;
         this.var_1283 = param1.userCategory;
         this._message = param1.text;
         this.var_392 = param1.links;
         this.var_2015 = param1.userX;
         this.var_280 = param1.userImage;
         this.var_2812 = param1.userColor;
         this._roomId = param1.roomId;
         this._roomCategory = param1.roomCategory;
         this.renderView();
      }
      
      public function get view() : IWindowContainer
      {
         return this._window;
      }
      
      public function get screenLevel() : int
      {
         return this.var_2810;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1720;
      }
      
      public function get senderX() : Number
      {
         return this.var_2015;
      }
      
      public function set senderX(param1:Number) : void
      {
         this.var_2015 = param1;
      }
      
      public function get width() : Number
      {
         return this.var_279;
      }
      
      public function get height() : Number
      {
         return const_1004;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_151;
      }
      
      public function get aboveLevels() : int
      {
         return this.var_2811;
      }
      
      public function set aboveLevels(param1:int) : void
      {
         this.var_2811 = param1;
      }
      
      public function set screenLevel(param1:int) : void
      {
         this.var_2810 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1720 = param1;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
         if(this._window != null)
         {
            this._window.x = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.var_151 = param1;
         if(this._window != null)
         {
            this._window.y = param1 - this.var_826;
         }
      }
      
      public function hidePointer() : void
      {
         if(this._window)
         {
            this._window.findChildByName("pointer").visible = false;
         }
      }
      
      public function setPointerOffset(param1:Number) : void
      {
         if(!this._window || this._window.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("pointer") as IBitmapWrapperWindow;
         var _loc3_:IBitmapWrapperWindow = this._window.findChildByName("middle") as IBitmapWrapperWindow;
         if(_loc3_ == null || _loc2_ == null)
         {
            return;
         }
         _loc2_.visible = true;
         param1 += this._window.width / 2;
         param1 = Math.min(param1,_loc3_.rectangle.right - _loc2_.width);
         param1 = Math.max(param1,_loc3_.rectangle.left);
         _loc2_.x = param1;
      }
      
      public function checkOverlap(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Rectangle = new Rectangle(this._x,this.var_151,this.width,const_1004);
         var _loc6_:Rectangle = new Rectangle(param1,param2,param3,param4);
         return _loc5_.intersects(_loc6_);
      }
      
      public function hideView() : void
      {
         if(this._window)
         {
            this._window.dispose();
         }
         this._window = null;
         this.var_2013 = false;
      }
      
      public function renderView() : void
      {
         var messageWidth:int = 0;
         var x1:int = 0;
         var y1:int = 0;
         var userIconWindow:IBitmapWrapperWindow = null;
         var i:int = 0;
         var lastLinkEndPos:int = 0;
         var linkFormat:TextFormat = null;
         var filteredLink:String = null;
         var placeHolder:String = null;
         var placeholderPos:int = 0;
         var linkPos:Array = null;
         if(this.var_2013)
         {
            return;
         }
         this.var_2013 = true;
         if(this._window)
         {
            return;
         }
         var isRespect:Boolean = false;
         switch(this.var_1546)
         {
            case RoomWidgetChatUpdateEvent.const_139:
               this._window = var_234.clone() as IRegionWindow;
               break;
            case RoomWidgetChatUpdateEvent.const_144:
               this._window = var_459.clone() as IRegionWindow;
               break;
            case RoomWidgetChatUpdateEvent.const_111:
               this._window = var_458.clone() as IRegionWindow;
               break;
            case RoomWidgetChatUpdateEvent.const_308:
               this._window = var_391.clone() as IRegionWindow;
               isRespect = true;
               break;
            case RoomWidgetChatUpdateEvent.const_280:
               this._window = var_391.clone() as IRegionWindow;
               isRespect = true;
         }
         var background:IBitmapWrapperWindow = this._window.findChildByName(const_4) as IBitmapWrapperWindow;
         var nameWindow:ILabelWindow = this._window.findChildByName(const_422) as ILabelWindow;
         var textWindow:ITextWindow = this._window.findChildByName(const_986) as ITextWindow;
         var pointerWindow:IBitmapWrapperWindow = this._window.findChildByName(const_1429) as IBitmapWrapperWindow;
         var pointerBitmapData:BitmapData = this._assetLibrary.getAssetByName("chat_bubble_pointer").content as BitmapData;
         var totalHeight:Number = this._window.height;
         var topOffset:int = 0;
         if(this.var_280 != null)
         {
            topOffset = Math.max(0,(this.var_280.height - background.height) / 2);
            totalHeight = Math.max(totalHeight,this.var_280.height);
         }
         this.var_279 = 0;
         this._window.x = this._x;
         this._window.y = this.var_151;
         this._window.width = 0;
         this._window.height = totalHeight;
         this.enableTooltip();
         this.addEventListeners(this._window);
         if(this.var_280 && !isRespect)
         {
            x1 = 14 - this.var_280.width / 2;
            y1 = Math.max(0,(background.height - this.var_280.height) / 2);
            userIconWindow = this._window.findChildByName("user_image") as IBitmapWrapperWindow;
            if(userIconWindow)
            {
               userIconWindow.width = this.var_280.width;
               userIconWindow.height = this.var_280.height;
               userIconWindow.bitmap = this.var_280;
               userIconWindow.disposesBitmap = false;
               userIconWindow.x = x1;
               userIconWindow.y = y1;
               this.var_826 = Math.max(0,(this.var_280.height - background.height) / 2);
               this.var_279 += userIconWindow.x + this.var_280.width;
            }
         }
         if(nameWindow != null)
         {
            if(!isRespect)
            {
               nameWindow.text = this.var_1036 + ": ";
               nameWindow.y += this.var_826;
               nameWindow.width = nameWindow.textWidth + const_622;
            }
            else
            {
               nameWindow.text = "";
               nameWindow.width = 0;
            }
            this.var_279 += nameWindow.width;
         }
         if(this.var_1546 == RoomWidgetChatUpdateEvent.const_308)
         {
            textWindow.text = this.var_80.registerParameter("widgets.chatbubble.respect","username",this.var_1036);
            this.var_279 = const_1003;
         }
         else if(this.var_1546 == RoomWidgetChatUpdateEvent.const_280)
         {
            textWindow.text = this.var_80.registerParameter("widget.chatbubble.petrespect","petname",this.var_1036);
            this.var_279 = const_1003;
         }
         else if(this.var_392 == null)
         {
            textWindow.text = this.message;
         }
         else
         {
            this.var_825 = new Array();
            lastLinkEndPos = -1;
            i = 0;
            while(i < this.var_392.length)
            {
               filteredLink = this.var_392[i][1];
               placeHolder = "{" + i + "}";
               placeholderPos = this._message.indexOf(placeHolder);
               lastLinkEndPos = placeholderPos + filteredLink.length;
               this.var_825.push([placeholderPos,lastLinkEndPos]);
               this._message = this._message.replace(placeHolder,filteredLink);
               i++;
            }
            textWindow.text = this.message;
            textWindow.immediateClickMode = true;
            textWindow.setParamFlag(WindowParam.const_33,false);
            textWindow.setParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING,true);
            linkFormat = textWindow.getTextFormat();
            linkFormat.color = 5923473;
            linkFormat.underline = true;
            i = 0;
            while(i < this.var_825.length)
            {
               linkPos = this.var_825[i];
               try
               {
                  textWindow.setTextFormat(linkFormat,linkPos[0],linkPos[1]);
               }
               catch(e:RangeError)
               {
                  Logger.log("Chat message links were malformed. Could not set TextFormat");
               }
               i++;
            }
         }
         if(textWindow.visible)
         {
            textWindow.x = this.var_279;
            if(nameWindow != null)
            {
               textWindow.x = nameWindow.x + nameWindow.width;
               if(nameWindow.width > const_622)
               {
                  textWindow.x -= const_622 - 1;
               }
            }
            textWindow.y += this.var_826;
            messageWidth = textWindow.textWidth;
            textWindow.width = messageWidth + const_1428;
            this.var_279 += textWindow.width;
         }
         if(pointerWindow != null && pointerWindow.visible)
         {
            pointerWindow.bitmap = pointerBitmapData;
            pointerWindow.disposesBitmap = false;
            pointerWindow.x = this.var_279 / 2;
            pointerWindow.y += this.var_826;
         }
         var bitmap:BitmapData = this.buildBubbleImage(nameWindow.width + textWindow.width,background.height,this.var_2812,isRespect);
         this._window.width = bitmap.width;
         this._window.y -= this.var_826;
         this.var_279 = this._window.width;
         background.bitmap = bitmap;
         background.y = this.var_826;
      }
      
      private function buildBubbleImage(param1:int, param2:int, param3:uint, param4:Boolean) : BitmapData
      {
         var _loc13_:* = null;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc5_:BitmapData = this._assetLibrary.getAssetByName("chat_bubble_left").content as BitmapData;
         var _loc6_:BitmapData = this._assetLibrary.getAssetByName("chat_bubble_middle").content as BitmapData;
         var _loc7_:BitmapData = this._assetLibrary.getAssetByName("chat_bubble_left_color").content as BitmapData;
         var _loc8_:BitmapData = this._assetLibrary.getAssetByName("chat_bubble_right").content as BitmapData;
         var _loc9_:int = 0;
         var _loc10_:Point = new Point();
         var _loc11_:BitmapData = new BitmapData(_loc5_.width + param1 + _loc8_.width,param2,true,16711935);
         _loc9_ += _loc5_.width;
         _loc11_.copyPixels(_loc5_,_loc5_.rect,_loc10_);
         if(param4)
         {
            _loc13_ = this._assetLibrary.getAssetByName("chat_bubble_left_gen").content as BitmapData;
            _loc11_.copyPixels(_loc13_,_loc13_.rect,_loc10_,null,null,true);
         }
         else
         {
            _loc14_ = 232;
            _loc15_ = 177;
            _loc16_ = 55;
            if(param3 != 0)
            {
               _loc14_ = uint(param3 >> 16 & 255);
               _loc15_ = uint(param3 >> 8 & 255);
               _loc16_ = uint(param3 >> 0 & 255);
            }
            _loc11_.draw(_loc7_,null,new ColorTransform(_loc14_ / 255,_loc15_ / 255,_loc16_ / 255),BlendMode.DARKEN);
         }
         var _loc12_:Matrix = new Matrix();
         _loc12_.scale(param1 / _loc6_.width,1);
         _loc12_.translate(_loc9_,0);
         _loc11_.draw(_loc6_,_loc12_);
         _loc9_ += param1;
         _loc10_.x = _loc9_;
         _loc11_.copyPixels(_loc8_,_loc8_.rect,_loc10_);
         _loc9_ += _loc8_.width;
         return _loc11_;
      }
      
      public function enableTooltip() : void
      {
         if(this._window != null)
         {
            this._window.toolTipCaption = "${chat.history.drag.tooltip}";
            this._window.toolTipDelay = 500;
         }
      }
      
      public function disableTooltip() : void
      {
         if(this._window != null)
         {
            this._window.toolTipCaption = "";
         }
      }
      
      private function addEventListeners(param1:IWindowContainer) : void
      {
         param1.setParamFlag(HabboWindowParam.const_40,true);
         param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onBubbleMouseClick);
         param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_DOWN,this.onBubbleMouseDown);
         param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onBubbleMouseOver);
         param1.addEventListener(WindowMouseEvent.const_25,this.onBubbleMouseOut);
         param1.addEventListener(WindowMouseEvent.const_57,this.onBubbleMouseUp);
      }
      
      private function testMessageLinkMouseClick(param1:int, param2:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc3_:ITextWindow = this._window.getChildByName(const_986) as ITextWindow;
         var _loc4_:int = _loc3_.getCharIndexAtPoint(param1 - _loc3_.x,param2 - _loc3_.y);
         if(_loc4_ > -1)
         {
            _loc5_ = 0;
            while(_loc5_ < this.var_825.length)
            {
               if(_loc4_ >= this.var_825[_loc5_][0] && _loc4_ <= this.var_825[_loc5_][1])
               {
                  if(this.var_392[_loc5_][2] == 0)
                  {
                     HabboWebTools.openExternalLinkWarning(this.var_392[_loc5_][0]);
                  }
                  else if(this.var_392[_loc5_][2] == 1)
                  {
                     HabboWebTools.openWebPage(this.var_2014 + this.var_392[_loc5_][0],"habboMain");
                  }
                  else
                  {
                     HabboWebTools.openWebPage(this.var_2014 + this.var_392[_loc5_][0]);
                  }
                  return true;
               }
               _loc5_++;
            }
         }
         return false;
      }
      
      private function onBubbleMouseClick(param1:WindowMouseEvent) : void
      {
         if(this.var_392 && this.var_392.length > 0)
         {
            if(this.testMessageLinkMouseClick(param1.localX,param1.localY))
            {
               return;
            }
         }
         this._widget.onItemMouseClick(this.var_1284,this.var_1036,this.var_1283,this._roomId,this._roomCategory,param1);
      }
      
      private function onBubbleMouseDown(param1:WindowMouseEvent) : void
      {
         this._widget.onItemMouseDown(this.var_1284,this.var_1283,this._roomId,this._roomCategory,param1);
      }
      
      private function onBubbleMouseOver(param1:WindowMouseEvent) : void
      {
         this._widget.onItemMouseOver(this.var_1284,this.var_1283,this._roomId,this._roomCategory,param1);
      }
      
      private function onBubbleMouseOut(param1:WindowMouseEvent) : void
      {
         this._widget.onItemMouseOut(this.var_1284,this.var_1283,this._roomId,this._roomCategory,param1);
      }
      
      private function onBubbleMouseUp(param1:WindowMouseEvent) : void
      {
         this._widget.mouseUp();
      }
   }
}
