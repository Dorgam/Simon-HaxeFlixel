package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("0", "assets/sounds/beep0.wav");
			type.set ("0", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("1", "assets/sounds/beep1.wav");
			type.set ("1", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("2", "assets/sounds/beep2.wav");
			type.set ("2", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("3", "assets/sounds/beep3.wav");
			type.set ("3", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/beep.ogg", "assets/sounds/beep.ogg");
			type.set ("assets/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/flixel.ogg", "assets/sounds/flixel.ogg");
			type.set ("assets/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
