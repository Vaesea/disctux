function startlevel()
{
  Camera.stop_earthquake();
  sector.settings.set_gravity(10);
  Effect.four_to_three(0);
}

function startlevelccbf()
{
  Camera.stop_earthquake();
  sector.settings.set_gravity(4);
  Effect.four_to_three(0);
}

function finishlevel()
{
  Tux.use_scripting_controller(true);
  nolokstatue.fade(0, 1);
  tuxstatue.fade(1, 1);
  wait(1.5);
  Tux.trigger_sequence("fireworks");
}

function past()
{
  Camera.start_earthquake(3, 0.05);
  Tux.deactivate();
  sector.settings.set_gravity(0);
  play_sound("sounds/past.ogg");
  Effect.sixteen_to_nine(1);
  pause_music(1);
  wait(2);
  Level.spawn("past", "one", "circle");
}

function minilevel()
{
  Camera.start_earthquake(3, 0.05);
  Tux.deactivate();
  sector.settings.set_gravity(0);
  play_sound("sounds/future.ogg");
  Effect.sixteen_to_nine(1);
  pause_music(1);
  wait(2);
  Level.spawn("minilevel", "one", "circle");
}

function badfuture()
{
  Tux.deactivate();
  Level.spawn("badfuture", "one", "fade");
}

function goodfuture()
{
  Tux.deactivate();
  Level.spawn("goodfuture", "one", "circle");
}

function present()
{
  Camera.start_earthquake(3, 0.05);
  Tux.deactivate();
  sector.settings.set_gravity(0);
  play_sound("sounds/future.ogg");
  Effect.sixteen_to_nine(1);
  pause_music(1);
  wait(2);
  Level.spawn("main", "one", "circle");
}

function past2()
{
  Camera.start_earthquake(3, 0.05);
  Tux.deactivate();
  sector.settings.set_gravity(0);
  play_sound("sounds/past.ogg");
  Effect.sixteen_to_nine(1);
  pause_music(1);
  wait(2);
  Level.spawn("past", "two", "circle");
}

function badfuture2()
{
  Camera.start_earthquake(3, 0.05);
  Tux.deactivate();
  sector.settings.set_gravity(0);
  play_sound("sounds/future.ogg");
  Effect.sixteen_to_nine(1);
  pause_music(1);
  wait(2);
  Level.spawn("badfuture", "main", "circle");
}

function goodfuture2()
{
  Camera.start_earthquake(3, 0.05);
  Tux.deactivate();
  sector.settings.set_gravity(0);
  play_sound("sounds/future.ogg");
  Effect.sixteen_to_nine(1);
  pause_music(1);
  wait(2);
  Level.spawn("goodfuture", "three", "circle");
}

function present2()
{
  Camera.start_earthquake(3, 0.05);
  Tux.deactivate();
  sector.settings.set_gravity(0);
  play_sound("sounds/future.ogg");
  Effect.sixteen_to_nine(1);
  pause_music(1);
  wait(2);
  Level.spawn("main", "two", "circle");
}

