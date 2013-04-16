package com.mysite
{
	import flash.display.MovieClip;
	import flash.display.Stage;

	import flash.events.Event;

	public class Hero extends MovieClip
	{
		public function Hero()
		{
			// constructor class
			stage.addEventListener(Event.ENTER_FRAME,loop);
		}

		public function loop():void
		{
			
		}
	}

}