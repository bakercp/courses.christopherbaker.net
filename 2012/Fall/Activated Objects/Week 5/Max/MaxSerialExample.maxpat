{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 195.0, 44.0, 275.0, 257.0 ],
		"bglocked" : 0,
		"defrect" : [ 195.0, 44.0, 275.0, 257.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(Make sure you are using the correct speed and port letter - see above).",
					"linecount" : 3,
					"id" : "obj-7",
					"fontname" : "Arial",
					"patching_rect" : [ 85.0, 164.0, 171.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"presentation_rect" : [ 85.0, 164.0, 0.0, 0.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4. Read a 1 or 0.",
					"id" : "obj-5",
					"fontname" : "Arial",
					"patching_rect" : [ 32.0, 220.0, 139.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"presentation_rect" : [ 32.0, 192.0, 0.0, 0.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3. Send a 1 or 0.",
					"id" : "obj-4",
					"fontname" : "Arial",
					"patching_rect" : [ 108.0, 123.0, 139.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"presentation_rect" : [ 108.0, 123.0, 0.0, 0.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2. Print the port list and figure out what port letter to use.",
					"linecount" : 3,
					"id" : "obj-3",
					"fontname" : "Arial",
					"patching_rect" : [ 108.0, 56.0, 139.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"presentation_rect" : [ 108.0, 55.0, 0.0, 0.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1. Turn on the metro to read the Serial Data.",
					"linecount" : 2,
					"id" : "obj-2",
					"fontname" : "Arial",
					"patching_rect" : [ 31.0, 15.0, 139.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-13",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 85.0, 123.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-12",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 8.0, 219.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-8",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 8.0, 16.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 10",
					"id" : "obj-6",
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 8.0, 87.0, 58.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "print",
					"id" : "obj-27",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 74.0, 55.0, 33.0, 18.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "serial c 9600",
					"id" : "obj-37",
					"fontname" : "Arial",
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 8.0, 164.0, 76.0, 20.0 ],
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 83.5, 115.0, 17.5, 115.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 150.0, 17.5, 150.0 ]
				}

			}
 ]
	}

}
