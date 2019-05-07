package 
{

	public class CauTrucAvatar
	{
		public var levelMapPoint:String = "";
		public var hangName:String = "";
		public var hangAvatarLink:String = "";
		public var hangDiem:String = "";
		public var hang:String = "";
		///////////////CONSTRUCTOR///////////////
		public function CauTrucAvatar()
		{

		}
		///////////////INPUTDATA///////////////
		public function INPUTDATA(level:String,ten:String,link:String,diem:String,hang:String):void
		{
			levelMapPoint=level;
			hangName=ten;
			hangAvatarLink=link;
			hangDiem=diem;
			this.hang=hang;
			trace(levelMapPoint + ":" + hangName + ":" + hangAvatarLink + ":" + hangDiem + ":" + this.hang);
		}

	}//end class
}