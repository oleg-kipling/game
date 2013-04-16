package com.mysite
{
	import flash.display.MovieClip;

	public class Game extends MovieClip
	{
		var hero:Hero = new Hero;

		public function Game()
		{
			//constructor class
			trace("hey! Game");
			addChild(hero);
		}
	}
}