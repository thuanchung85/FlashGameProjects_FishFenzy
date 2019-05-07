package 
{
	import flash.display.Sprite;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	import flash.display.MovieClip;


	public class PreloaderWrapper extends MovieClip
	{

		private var _targetLoaderInfo:LoaderInfo;
		private var loader:Loader;
		private var mcExternal:MovieClip;
		private var _loadPercent:Number = 0;


		public function PreloaderWrapper()
		{
			visible = false;
			addEventListener(Event.ADDED_TO_STAGE,init);

		}
		public function init(e:Event):void
		{
			loader = new Loader();
			MovieClip(root).addChild(loader);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,swfIn);

		}
		///////////////////
		public function LOADSWF(urlswf:String)
		{

			loader.load( new URLRequest(urlswf) );
		}
///////////////////
		function swfIn(e:Event):void
		{

			//trace("Listener in container_1, swfIn, runs.");

			//this.addChild(loader);

			loader.x = 0;

			loader.y = 0;

			loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,swfIn);

			mcExternal = loader.content as MovieClip;

			

		}
		
	}//end class


}