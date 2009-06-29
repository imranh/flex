
/**
 * 	Generated by mxmlc 2.0
 *
 *	Package:	
 *	Class: 		dataBindingMxml
 *	Source: 	/home/nano/workspace/flex/proFlexOnSpring/dataBindingMxml/src/dataBindingMxml.mxml
 *	Template: 	flex2/compiler/mxml/gen/ClassDef.vm
 *	Time: 		2009.06.28 20:54:44 ART
 */

package 
{

import flash.accessibility.*;
import flash.debugger.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.external.*;
import flash.filters.*;
import flash.geom.*;
import flash.media.*;
import flash.net.*;
import flash.printing.*;
import flash.profiler.*;
import flash.system.*;
import flash.text.*;
import flash.ui.*;
import flash.utils.*;
import flash.xml.*;
import mx.binding.*;
import mx.binding.IBindingClient;
import mx.containers.Form;
import mx.containers.FormItem;
import mx.containers.Panel;
import mx.controls.TextInput;
import mx.core.Application;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.UIComponentDescriptor;
import mx.core.mx_internal;
import mx.styles.*;
import mx.utils.ObjectProxy;


[Frame(extraClass="_dataBindingMxml_FlexInit")]

[Frame(factoryClass="_dataBindingMxml_mx_managers_SystemManager")]



public class dataBindingMxml
	extends mx.core.Application
	implements mx.binding.IBindingClient
{

	[Bindable]
/**
 * @private
 **/
	public var contacts : mx.utils.ObjectProxy;

	[Bindable]
/**
 * @private
 **/
	public var firstName : mx.controls.TextInput;

	[Bindable]
/**
 * @private
 **/
	public var lastName : mx.controls.TextInput;




private var _documentDescriptor_ : mx.core.UIComponentDescriptor = 
new mx.core.UIComponentDescriptor({
  type: mx.core.Application
  ,
  propertiesFactory: function():Object { return {
    childDescriptors: [
      new mx.core.UIComponentDescriptor({
        type: mx.containers.Panel
        ,
        stylesFactory: function():void {
          this.paddingLeft = 10;
          this.paddingRight = 10;
          this.paddingBottom = 10;
          this.paddingTop = 10;
          this.horizontalAlign = "center";
        }
        ,
        propertiesFactory: function():Object { return {
          title: "Listing 4-8",
          childDescriptors: [
            new mx.core.UIComponentDescriptor({
              type: mx.containers.Form
              ,
              propertiesFactory: function():Object { return {
                childDescriptors: [
                  new mx.core.UIComponentDescriptor({
                    type: mx.containers.FormItem
                    ,
                    propertiesFactory: function():Object { return {
                      label: "First Name",
                      childDescriptors: [
                        new mx.core.UIComponentDescriptor({
                          type: mx.controls.TextInput
                          ,
                          id: "firstName"
                        })
                      ]
                    }}
                  })
                ,
                  new mx.core.UIComponentDescriptor({
                    type: mx.containers.FormItem
                    ,
                    propertiesFactory: function():Object { return {
                      label: "Last Name",
                      childDescriptors: [
                        new mx.core.UIComponentDescriptor({
                          type: mx.controls.TextInput
                          ,
                          id: "lastName"
                        })
                      ]
                    }}
                  })
                ]
              }}
            })
          ]
        }}
      })
    ]
  }}
})

    /**
     * @private
     **/
	public function dataBindingMxml()
	{
		super();

		mx_internal::_document = this;

		//	our style settings
		//	initialize component styles
		if (!this.styleDeclaration)
		{
			this.styleDeclaration = new CSSStyleDeclaration();
		}

		this.styleDeclaration.defaultFactory = function():void
		{
			this.horizontalAlign = "center";
			this.verticalAlign = "middle";
		};


		//	ambient styles
		mx_internal::_dataBindingMxml_StylesInit();

		//	properties
		this.layout = "absolute";
		_dataBindingMxml_ObjectProxy1_i();

		//	events

	}

    /**
     * @private
     **/
	override public function initialize():void
	{
 		mx_internal::setDocumentDescriptor(_documentDescriptor_);

		var bindings:Array = _dataBindingMxml_bindingsSetup();
		var watchers:Array = [];

		var target:dataBindingMxml = this;

		if (_watcherSetupUtil == null)
		{
			var watcherSetupUtilClass:Object = getDefinitionByName("_dataBindingMxmlWatcherSetupUtil");
			watcherSetupUtilClass["init"](null);
		}

		_watcherSetupUtil.setup(this,
					function(propertyName:String):* { return target[propertyName]; },
					bindings,
					watchers);

		for (var i:uint = 0; i < bindings.length; i++)
		{
			Binding(bindings[i]).execute();
		}

		mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
		mx_internal::_watchers = mx_internal::_watchers.concat(watchers);


		super.initialize();
	}



    //	supporting function definitions for properties, events, styles, effects
private function _dataBindingMxml_ObjectProxy1_i() : mx.utils.ObjectProxy
{
	var temp : mx.utils.ObjectProxy = new mx.utils.ObjectProxy();
	contacts = temp;
	temp.name = _dataBindingMxml_ObjectProxy2_c();
	return temp;
}

private function _dataBindingMxml_ObjectProxy2_c() : mx.utils.ObjectProxy
{
	var temp : mx.utils.ObjectProxy = new mx.utils.ObjectProxy();
	temp.first = null;
	temp.last = null;
	mx.binding.BindingManager.executeBindings(this, "temp", temp);
	return temp;
}


	//	binding mgmt
    private function _dataBindingMxml_bindingsSetup():Array
    {
        var result:Array = [];
        var binding:Binding;

        binding = new mx.binding.Binding(this,
            function():*
            {
                return ("John");
            },
            function(_sourceFunctionReturnValue:*):void
            {
				
                contacts.name.first = _sourceFunctionReturnValue;
            },
            "contacts.name.first");
        result[0] = binding;
        binding = new mx.binding.Binding(this,
            function():*
            {
                return ("Doe");
            },
            function(_sourceFunctionReturnValue:*):void
            {
				
                contacts.name.last = _sourceFunctionReturnValue;
            },
            "contacts.name.last");
        result[1] = binding;
        binding = new mx.binding.Binding(this,
            function():*
            {
                return contacts.name.first;
            },
            function(_sourceFunctionReturnValue:*):void
            {
				
                firstName.text = _sourceFunctionReturnValue;
            },
            "firstName.text");
        result[2] = binding;
        binding = new mx.binding.Binding(this,
            function():*
            {
                return contacts.name.last;
            },
            function(_sourceFunctionReturnValue:*):void
            {
				
                lastName.text = _sourceFunctionReturnValue;
            },
            "lastName.text");
        result[3] = binding;

        return result;
    }

    private function _dataBindingMxml_bindingExprs():void
    {
        var destination:*;
		[Binding(id='0')]
		destination = ("John");
		[Binding(id='1')]
		destination = ("Doe");
		[Binding(id='2')]
		firstName.text = contacts.name.first;
		[Binding(id='3')]
		lastName.text = contacts.name.last;
    }

    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil):void
    {
        (dataBindingMxml)._watcherSetupUtil = watcherSetupUtil;
    }

    private static var _watcherSetupUtil:IWatcherSetupUtil;


	mx_internal static var _dataBindingMxml_StylesInit_done:Boolean = false;

	mx_internal function _dataBindingMxml_StylesInit():void
	{
		//	only add our style defs to the StyleManager once
		if (mx_internal::_dataBindingMxml_StylesInit_done)
			return;
		else
			mx_internal::_dataBindingMxml_StylesInit_done = true;

		var style:CSSStyleDeclaration;
		var effects:Array;


		StyleManager.mx_internal::initProtoChainRoots();
	}



    /**
     * @private
     **/
    mx_internal var _bindings : Array = [];
    /**
     * @private
     **/
    mx_internal var _watchers : Array = [];
    /**
     * @private
     **/
    mx_internal var _bindingsByDestination : Object = {};
    /**
     * @private
     **/
    mx_internal var _bindingsBeginWithWord : Object = {};

}

}