
public class MainScene : SEScene
{


	SESprite ave1;
	SESprite ave2;
	SESprite ave3;
	SESprite ave4;
	SESprite text;
	double trans = 0;
	
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	add_sprite_for_color(Color.instance("#3300FF"), get_scene_width(), get_scene_height());
	rsc.prepare_image("ave1", "ave1", get_scene_width()*0.5,get_scene_height()*0.5);	
	rsc.prepare_image("ave2", "ave2", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("ave3", "ave3", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("ave4", "ave4", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_font("myfont", "arial color=black", 40);
	
	ave1 = add_sprite_for_image(SEImage.for_resource("ave1"));
	ave2 = add_sprite_for_image(SEImage.for_resource("ave2"));
	ave3 = add_sprite_for_image(SEImage.for_resource("ave3"));
	ave4 = add_sprite_for_image(SEImage.for_resource("ave4"));
	text = add_sprite_for_text("SCENES", "myfont");
	
	ave1.move(0,0);
	ave2.move(0,get_scene_height()*0.5);
	ave3.move(get_scene_width()*0.5,0);
	ave4.move(get_scene_width()*0.5,get_scene_height()*0.5);
	text.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {

		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new First());
		}
		else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Second());		
		}
		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Third());
		}
		else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Fourth());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}