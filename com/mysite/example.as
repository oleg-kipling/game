package com.mysite 
{
	import flash.display.MovieClip;
	
	import flash.display.Stage; 
	import flash.display.StageAlign; 
	import flash.display.StageScaleMode;

	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.text.TextField;
	
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.events.Event;
	import flash.geom.ColorTransform;
	
	import fl.transitions.easing.*;
	import flash.text.TextField;
	import fl.transitions.Tween;

	import com.senocular.KeyObject;

	public class Base extends MovieClip
	{
		private var key:KeyObject;
		private var speed:uint = 5;
		private var i:int = 0;
		private var currentIndex:int = 0;
		private var current:Boolean = true;
		private var colorInfo:ColorTransform;
		private var menuList:Array = new Array;
		private var txtList:Array = new Array;
		private var txtField:TextField = new TextField;
		private var txtArray:Array = new Array("new game", 
									   		   "options", 
									   		   "navigation");
		
				
		public function Base()
		{
			/////////////////////// constructor code

			menuBuilder();
			//stage.addEventListener(Event.ENTER_FRAME,enterframe);
			stage.addEventListener(KeyboardEvent.KEY_DOWN,navigation);
			
		}

		public function menuBuilder():void
		{
			for (i= 0; i<3; i++)
			{	
				menuList[i] = new Circle();

				menuList[i].name = "circle" + i;
				menuList[i].x += stage.stageWidth/2;
				menuList[i].y += 100 + 100*i;

				addChild(menuList[i]);
				//trace(menuList[i].name);
				//menuList[i].addEventListener(MouseEvent.CLICK, clicker);

				txtList[i] = new TextField();
				txtList[i].text = txtArray[i];
				
				menuList[i].addChild(txtList[i]);
				//trace(txtList.length);
				
				currentActiveIndex();
				//trace(menuList[currentIndex].name);
			}
		}
		
		public function currentActiveIndex():void
		{
			fxs();
		}

		public function navigation(e:KeyboardEvent):void
		{
			// keyCode
			//trace("You pressed key: " + e.keyCode.toString());
			
			if (e.keyCode == 38)
			{
				//FIXME! delete if & use switch-case
				if (currentIndex > 0)
				{
					updateCurrent(currentIndex -1);
					
					/*nofxs();
					currentIndex --;
					trace(currentIndex);
					fxs();*/
				} 
			}
			
			else if (e.keyCode == 40) 
			{
				if (currentIndex < 2)
				{
					updateCurrent(currentIndex +1);
					
					/*nofxs();
					currentIndex ++;
					trace(currentIndex);
					fxs();*/
				}
			}

			if (e.keyCode == 13)
			{
				trace("ENTER");
				
				switch (currentIndex)
				{
					case currentIndex = 0:
						trace("brilliant! " + currentIndex);
						remover();
						break;
					case currentIndex = 1:
						trace("brilliant! " + currentIndex);
						remover();
						break;
					case currentIndex = 2:
						trace("brilliant! " + currentIndex);
						remover();
						break;
				}
			} 
		}
		
		
		public function updateCurrent(newIndex):void
		{
		//Q? :how it's work ? 
			nofxs();
			currentIndex = newIndex;
			trace(currentIndex);
			fxs();
		}

		public function fxs():void
		{
			var scaleBoxX:Tween = new Tween(menuList[currentIndex],"scaleX", Elastic.easeOut, 1, 1.5, 3, true);
			var scaleBoxY:Tween = new Tween(menuList[currentIndex],"scaleY", Elastic.easeOut, 1, 1.5, 3, true);
			//var fadeOut:Tween = new Tween(e.target,"alpha", None.easeOut, 1, 0, 3, true);
		}

		public function nofxs():void
		{
			var scaleBoxX:Tween = new Tween(menuList[currentIndex],"scaleX", Elastic.easeOut, 1.5, 1, 3, true);
			var scaleBoxY:Tween = new Tween(menuList[currentIndex],"scaleY", Elastic.easeOut, 1.5, 1, 3, true)
		}
		
		public function remover():void
		{
			this.removeChild(menuList[currentIndex]);
			//this.removeEventListener(e:KeyboardEvent);
		}

		public function showFirsItem():void
		{
			
		} 



		/*public function switcher()
		{
			if (currentIndex != currentIndex)
			{
				nofxs();
			}
		}*/
	}
}
		
		/*public function enterframe(e:Event):void
		{
		}
		
		public function clicker(e:MouseEvent):void
		{
			
			trace("click");
			var fadeOut:Tween = new Tween(e.target,"alpha", None.easeOut, 1, 0, 3, true);
			var scaleBoxX:Tween = new Tween(e.target,"scaleX", Elastic.easeOut, 1, 2, 3, true);
			var scaleBoxY:Tween = new Tween(e.target,"scaleY", Elastic.easeOut, 1, 2, 3, true);
		}*/

//switch - case
/* switch (e.currentTarget.name)
{
	case "circle0":
		trace("brilliant!" + menuList.name);
		break;
	case "circle1":
		trace("brilliant!" + menuList.name);
		break;
	case "circle2":
		trace("brilliant!" + menuList.name);
		break;
} */



/////////////////////// constructor code
/* Можно так же добавить .label, container	
var container:MovieClip = new MovieClip;
addChild(container);*/