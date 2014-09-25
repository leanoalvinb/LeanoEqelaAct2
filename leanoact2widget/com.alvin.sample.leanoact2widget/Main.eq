
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

class Main: LayerWidget,EventReceiver
{
	public void initialize()
	{
		base.initialize();
		set_size_request_override(px("50mm"),px("70mm"));
		add(CanvasWidget.for_colors(Color.instance("green"),Color.instance("red")));
		//add(LabelWidget.for_string("UST").set_font(Theme.font().modify("6mm bold color=black outline-color=green")));
		add(ButtonWidget.for_string("Click here").set_event("clicked"));
	}
	public void on_event(Object o)
	{
		if("clicked".equals(o))
		{
			add(CanvasWidget.for_colors(Color.instance("red"),Color.instance("green")));
			add(LabelWidget.for_string("UST").set_font(Theme.font().modify("6mm bold color=black outline-color=red")));
		}	
	}

	public void cleanup() 
	{
		base.cleanup();
	}
}


