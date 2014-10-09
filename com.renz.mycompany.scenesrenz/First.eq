public class First : SEScene
{

	SESprite text;
	SESprite main;
	SESprite sprite;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
			add_sprite_for_color(Color.instance("#3300FF"), get_scene_width(), get_scene_height());
			
			rsc.prepare_image("button", "button", get_scene_width()*0.2,get_scene_height()*0.2);
			rsc.prepare_image("ave1", "ave1", get_scene_width()*0.5,get_scene_height()*0.65);
			rsc.prepare_font("myfont", "arial  color=#000000", 80);
			
			main = add_sprite_for_image(SEImage.for_resource("button"));
		    sprite = add_sprite_for_image(SEImage.for_resource("ave1"));
			text = add_sprite_for_text("1ST SCENE", "myfont");

			main.move(get_scene_width()*0.75,get_scene_height()*0.75);
		    sprite.move(get_scene_width()*0.5,0);
			text.move(0,0);
	}
	
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		
		if(pi.is_inside(0.75*get_scene_width(),0.75*get_scene_height(),0.75*get_scene_width(),0.75*get_scene_height())) {
			switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}