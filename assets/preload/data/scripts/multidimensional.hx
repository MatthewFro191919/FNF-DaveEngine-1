import flixel.FlxSprite;
import flixel.FlxG;

function onCreate() {
    var DayBG = new FlxSprite(-608, -500).loadGraphic("bambi/sky");
    FlxG.state.add(DayBG);
    DayBG.scrollFactor.set(0.1, 0.1);

    var flatgrass = new FlxSprite(-55, -150).loadGraphic("bambi/gm_flatgrass");
    FlxG.state.add(flatgrass);
    flatgrass.scrollFactor.set(0.3, 0.3);
    flatgrass.scale.set(0.3, 0.3);

    var hills = new FlxSprite(-220, 5).loadGraphic("bambi/orangey hills");
    FlxG.state.add(hills);
    hills.scrollFactor.set(0.3, 0.3);

    var farm = new FlxSprite(69, 85).loadGraphic("bambi/funfarmhouse");
    FlxG.state.add(farm);
    farm.scrollFactor.set(0.6, 0.6);

    var ground = new FlxSprite(-480, 480).loadGraphic("bambi/grass lands");
    FlxG.state.add(ground);
    ground.scrollFactor.set(1, 1);

    var corn1 = new FlxSprite(-280, 180).loadGraphic("bambi/cornFence");
    FlxG.state.add(corn1);
    corn1.scrollFactor.set(1, 1);

    var corn2 = new FlxSprite(1220, 200).loadGraphic("bambi/cornFence2");
    FlxG.state.add(corn2);
    corn2.scrollFactor.set(1, 1);

    var sign = new FlxSprite(125, 340).loadGraphic("bambi/Sign");
    FlxG.state.add(sign);
    sign.scrollFactor.set(1, 1);

    var cornbag = new FlxSprite(1320, 550).loadGraphic("bambi/cornbag");
    FlxG.state.add(cornbag);
    cornbag.scrollFactor.set(1, 1);

    var bg1 = new FlxSprite(-800, -500).loadGraphic("RedSkyBG");
    FlxG.state.add(bg1);
    bg1.scrollFactor.set(1, 1);
    addGlitchEffect(bg1, 2, 5, 0.1);
    bg1.scale.set(1.3, 1.3);
    bg1.visible = true;

    var bg2 = new FlxSprite(-800, -500).loadGraphic("dave/multidimentional/Trippy");
    FlxG.state.add(bg2);
    bg2.scrollFactor.set(1, 1);
    addGlitchEffect(bg2, 2, 5, 0.1);
    bg2.scale.set(1.3, 1.3);
    bg2.visible = false;

    var bg3 = new FlxSprite(-800, -500).loadGraphic("dave/multidimentional/PIlls");
    FlxG.state.add(bg3);
    bg3.scrollFactor.set(1, 1);
    addGlitchEffect(bg3, 2, 5, 0.1);
    bg3.scale.set(1.3, 1.3);
    bg3.visible = false;

    var bg4 = new FlxSprite(-800, -500).loadGraphic("dave/multidimentional/Tubed");
    FlxG.state.add(bg4);
    bg4.scrollFactor.set(1, 1);
    addGlitchEffect(bg4, 2, 5, 0.1);
    bg4.scale.set(1.3, 1.3);
    bg4.visible = false;

    var bg5 = new FlxSprite(-800, -500).loadGraphic("dave/multidimentional/DarkBlue");
    FlxG.state.add(bg5);
    bg5.scrollFactor.set(1, 1);
    addGlitchEffect(bg5, 2, 5, 0.1);
    bg5.scale.set(1.3, 1.3);
    bg5.visible = false;
}

function onUpdate(elapsed:Float) {
    if (curStep == 1024) {
        FlxG.camera.flash("FFFFFF", 1);
        bg1.visible = false;
        bg2.visible = true;
    }
    if (curStep == 1536) {
        FlxG.camera.flash("FFFFFF", 1);
        bg2.visible = false;
        bg3.visible = true;
    }
    if (curStep == 2048) {
        FlxG.camera.flash("FFFFFF", 1);
        bg3.visible = false;
        bg4.visible = true;
    }
    if (curStep == 2560) {
        FlxG.camera.flash("FFFFFF", 1);
        bg4.visible = false;
        bg5.visible = true;
    }
    if (curStep == 2943) {
        FlxG.camera.flash("FFFFFF", 1);
        bg5.visible = false;
        bg2.visible = true;
    }

    if (curStep == 3224) {
        FlxG.camera.flash("FFFFFF", 1);
        bg2.visible = false;
    }
}