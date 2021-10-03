package com.sulake.core.utils
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class XMLVariableParser
   {
      
      public static const const_153:String = "hex";
      
      public static const const_41:String = "int";
      
      public static const const_238:String = "uint";
      
      public static const const_237:String = "Number";
      
      public static const const_1495:String = "float";
      
      public static const const_38:String = "Boolean";
      
      public static const const_1451:String = "bool";
      
      public static const const_54:String = "String";
      
      public static const const_235:String = "Point";
      
      public static const const_269:String = "Rectangle";
      
      public static const const_124:String = "Array";
      
      public static const const_217:String = "Map";
      
      private static const const_607:String = "key";
      
      private static const TYPE:String = "type";
      
      private static const const_606:String = "value";
      
      private static const const_599:String = "AvailabilityTimeMessageParser";
      
      private static const const_1767:String = "false";
      
      private static const X:String = "x";
      
      private static const Y:String = "y";
      
      private static const const_1293:String = "width";
      
      private static const const_1294:String = "height";
      
      private static const const_1302:String = ",";
       
      
      public function XMLVariableParser()
      {
         super();
      }
      
      public static function parseVariableList(param1:XMLList, param2:Map, param3:Array = null) : uint
      {
         var _loc5_:int = 0;
         var _loc4_:uint = param1.length();
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            XMLVariableParser.parseVariableToken(param1[_loc5_],param2,param3);
            _loc5_++;
         }
         return _loc4_;
      }
      
      private static function parseVariableToken(param1:XML, param2:Map, param3:Array = null) : void
      {
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc5_:String = const_54;
         _loc7_ = param1.attribute(const_607);
         if(_loc7_.length() > 0)
         {
            _loc4_ = String(param1.attribute(const_607));
         }
         else
         {
            _loc4_ = param1.child(const_607)[0];
         }
         _loc7_ = param1.attribute(TYPE);
         if(_loc7_.length() > 0)
         {
            _loc5_ = String(param1.attribute(TYPE));
         }
         _loc7_ = param1.attribute(const_606);
         if(_loc7_.length() > 0)
         {
            _loc6_ = String(param1.attribute(const_606));
         }
         if(_loc6_ != null)
         {
            param2[_loc4_] = XMLVariableParser.castStringToType(_loc6_,_loc5_);
         }
         else
         {
            _loc8_ = param1.child(const_606)[0];
            if(_loc8_ != null)
            {
               _loc9_ = _loc8_.child(0)[0];
               _loc6_ = _loc9_.children()[0];
               _loc5_ = _loc9_.localName();
               param2[_loc4_] = XMLVariableParser.parseValueType(_loc9_,_loc5_);
            }
            else if(_loc5_ == const_217 || _loc5_ == const_124)
            {
               param2[_loc4_] = XMLVariableParser.parseValueType(param1,_loc5_);
            }
         }
         if(param3)
         {
            param3.push(_loc5_);
         }
      }
      
      public static function castStringToType(param1:String, param2:String) : Object
      {
         switch(param2)
         {
            case const_238:
               return uint(param1);
            case const_41:
               return int(param1);
            case const_237:
               return Number(param1);
            case const_1495:
               return Number(param1);
            case const_38:
               return param1 == const_599 || int(param1) > 0;
            case const_1451:
               return param1 == const_599 || int(param1) > 0;
            case const_153:
               return uint(param1);
            case const_124:
               return param1.split(const_1302);
            default:
               return String(param1);
         }
      }
      
      public static function parseValueType(param1:XML, param2:String) : Object
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         switch(param2)
         {
            case const_54:
               return String(param1);
            case const_235:
               _loc4_ = new Point();
               _loc4_.x = Number(param1.attribute(X));
               _loc4_.y = Number(param1.attribute(Y));
               return _loc4_;
            case const_269:
               _loc5_ = new Rectangle();
               _loc5_.x = Number(param1.attribute(X));
               _loc5_.y = Number(param1.attribute(Y));
               _loc5_.width = Number(param1.attribute(const_1293));
               _loc5_.height = Number(param1.attribute(const_1294));
               return _loc5_;
            case const_124:
               _loc3_ = new Map();
               parseVariableList(param1.children(),_loc3_);
               _loc6_ = new Array();
               for(_loc7_ in _loc3_)
               {
                  _loc6_.push(_loc3_[_loc7_]);
               }
               return _loc6_;
            case const_217:
               _loc3_ = new Map();
               XMLVariableParser.parseVariableList(param1.children(),_loc3_);
               return _loc3_;
            default:
               throw new Error("Unable to parse data type \"" + param2 + "\", unknown type!");
         }
      }
   }
}
