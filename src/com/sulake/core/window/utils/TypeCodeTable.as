package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_720;
         param1["bitmap"] = const_886;
         param1["border"] = const_731;
         param1["border_notify"] = const_1475;
         param1["button"] = const_585;
         param1["button_thick"] = const_842;
         param1["button_icon"] = const_1470;
         param1["button_group_left"] = const_786;
         param1["button_group_center"] = const_862;
         param1["button_group_right"] = const_801;
         param1["canvas"] = const_818;
         param1["checkbox"] = const_684;
         param1["closebutton"] = const_1152;
         param1["container"] = const_380;
         param1["container_button"] = const_849;
         param1["display_object_wrapper"] = const_666;
         param1["dropmenu"] = const_459;
         param1["dropmenu_item"] = const_560;
         param1["frame"] = const_358;
         param1["frame_notify"] = const_1727;
         param1["header"] = const_700;
         param1["html"] = const_1239;
         param1["icon"] = const_1115;
         param1["itemgrid"] = const_1133;
         param1["itemgrid_horizontal"] = const_475;
         param1["itemgrid_vertical"] = const_717;
         param1["itemlist"] = const_1151;
         param1["itemlist_horizontal"] = const_412;
         param1["itemlist_vertical"] = const_387;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1516;
         param1["menu"] = const_1448;
         param1["menu_item"] = const_1437;
         param1["submenu"] = const_1199;
         param1["minimizebox"] = const_1657;
         param1["notify"] = const_1461;
         param1["null"] = const_856;
         param1["password"] = const_651;
         param1["radiobutton"] = const_756;
         param1["region"] = const_447;
         param1["restorebox"] = const_1553;
         param1["scaler"] = const_681;
         param1["scaler_horizontal"] = const_1493;
         param1["scaler_vertical"] = const_1496;
         param1["scrollbar_horizontal"] = const_437;
         param1["scrollbar_vertical"] = const_721;
         param1["scrollbar_slider_button_up"] = const_1047;
         param1["scrollbar_slider_button_down"] = const_1075;
         param1["scrollbar_slider_button_left"] = const_1185;
         param1["scrollbar_slider_button_right"] = const_1104;
         param1["scrollbar_slider_bar_horizontal"] = const_1149;
         param1["scrollbar_slider_bar_vertical"] = const_1103;
         param1["scrollbar_slider_track_horizontal"] = const_1220;
         param1["scrollbar_slider_track_vertical"] = const_1012;
         param1["scrollable_itemlist"] = const_1594;
         param1["scrollable_itemlist_vertical"] = const_480;
         param1["scrollable_itemlist_horizontal"] = const_1172;
         param1["selector"] = const_917;
         param1["selector_list"] = const_694;
         param1["submenu"] = const_1199;
         param1["tab_button"] = const_541;
         param1["tab_container_button"] = const_1092;
         param1["tab_context"] = const_457;
         param1["tab_content"] = const_1183;
         param1["tab_selector"] = const_629;
         param1["text"] = const_540;
         param1["input"] = const_686;
         param1["toolbar"] = const_1492;
         param1["tooltip"] = const_343;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
