package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_182;
         param1["bound_to_parent_rect"] = const_95;
         param1["child_window"] = const_1235;
         param1["embedded_controller"] = const_1212;
         param1["resize_to_accommodate_children"] = const_69;
         param1["input_event_processor"] = const_29;
         param1["internal_event_handling"] = const_776;
         param1["mouse_dragging_target"] = const_267;
         param1["mouse_dragging_trigger"] = const_386;
         param1["mouse_scaling_target"] = const_299;
         param1["mouse_scaling_trigger"] = const_548;
         param1["horizontal_mouse_scaling_trigger"] = const_247;
         param1["vertical_mouse_scaling_trigger"] = const_270;
         param1["observe_parent_input_events"] = const_1051;
         param1["optimize_region_to_layout_size"] = const_523;
         param1["parent_window"] = const_1173;
         param1["relative_horizontal_scale_center"] = const_188;
         param1["relative_horizontal_scale_fixed"] = const_155;
         param1["relative_horizontal_scale_move"] = const_384;
         param1["relative_horizontal_scale_strech"] = const_410;
         param1["relative_scale_center"] = const_1132;
         param1["relative_scale_fixed"] = const_635;
         param1["relative_scale_move"] = const_1112;
         param1["relative_scale_strech"] = const_1134;
         param1["relative_vertical_scale_center"] = const_203;
         param1["relative_vertical_scale_fixed"] = const_136;
         param1["relative_vertical_scale_move"] = const_253;
         param1["relative_vertical_scale_strech"] = const_321;
         param1["on_resize_align_left"] = const_709;
         param1["on_resize_align_right"] = const_431;
         param1["on_resize_align_center"] = const_524;
         param1["on_resize_align_top"] = const_802;
         param1["on_resize_align_bottom"] = const_464;
         param1["on_resize_align_middle"] = const_479;
         param1["on_accommodate_align_left"] = const_1078;
         param1["on_accommodate_align_right"] = const_445;
         param1["on_accommodate_align_center"] = const_851;
         param1["on_accommodate_align_top"] = const_1040;
         param1["on_accommodate_align_bottom"] = const_539;
         param1["on_accommodate_align_middle"] = const_657;
         param1["route_input_events_to_parent"] = const_525;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1121;
         param1["scalable_with_mouse"] = const_1098;
         param1["reflect_horizontal_resize_to_parent"] = const_528;
         param1["reflect_vertical_resize_to_parent"] = const_553;
         param1["reflect_resize_to_parent"] = const_325;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1248;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
