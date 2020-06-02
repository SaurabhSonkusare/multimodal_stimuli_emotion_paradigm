# Film clips + music clips + pictures(IAPS): fMRI-HIRF stimuli paradigm
# Created October 2015
# Saurabh Sonkusare


scenario="HIRF_paradigm_1";
scenario_type=trials;

default_trial_start_delay = 0;
#default_trial_type=fixed;

$V_Height = 1024;
$V_Size = 1600;

# stimulus font and colour
response_matching = simple_matching;
default_background_color=0,0,0;
default_font="Arial";
default_font_size=30;
default_text_align=align_center;
active_buttons=1;
button_codes=1;


write_codes = true;
pulse_width = 10;

begin;

#fixation cross
trial {

	stimulus_event {
      picture {text {caption = "+"; font_size = 56;}; x = 0; y = 0;};
		port_code = 20;
      time = 0;

   } main_eventfix;

	
	
   nothing {};
   code = "";
   time = 10;
   port_code = 0;
   
} fix_trial;

trial {
            nothing{};
            port_code = 0;
} empty_trial;



trial {
    trial_duration = forever;
    trial_type = first_response;
    picture { text {caption = "Please rate the clip and press space bar to continue"; font_size = 40; } rate_text; 
            x = 0; y = 0; };
           
} rate_trial;

trial {
    trial_duration = forever;
    trial_type = first_response;
    picture { text {caption = "Please press space bar to continue"; font_size = 40; } rate_text1; 
            x = 0; y = 0; };
           
} rate_trial_pic;

trial {
    trial_duration = forever;
    trial_type = first_response;
} wait_trial;



array { 


       video { filename = "Clip_06_ARMAGEDDON_sad_goodbye.avi"; description = "36"; width = 1370; height = 900;}V1;

       video { filename = "Clip_01_10_THINGS_I_HATE_ABOUT_YOU_song.avi"; description = "37"; width = 1370; height = 900;};

       video { filename = "Clip_32_Mr_Bean_s.Holiday.avi";description = "38"; width = 1370; height = 900;};

       video { filename = "Clip_02_21_GRAMS_hospital_grief.avi";description = "39"; width = 1370; height = 900;};

       video { filename = "Clip_35_PINK_FLAMINGOS_DOG_POO.avi";description = "40";width = 1370; height = 900;};

} emotional_films;


array {
   sound { wavefile { filename = "003_HV_HA_Happy.wav";}; description = "51"; } M1;
   sound { wavefile { filename = "103_LV_HA_Fear.wav";}; description = "52"; };
   sound { wavefile { filename = "126_LV_HA_Anger.wav";}; description = "53"; };
   sound { wavefile { filename = "217_LV_HA_Anger.wav";}; description = "54"; };
   sound { wavefile { filename = "242_HV_HA_Happy.wav";}; description = "58"; };
}emotional_music;


array {
  
    bitmap { filename = "1650.jpg"; description = "101";}P1;
    bitmap { filename = "5470.jpg"; description = "105";};
    bitmap { filename = "5621.jpg"; description = "106";};
    bitmap { filename = "5626.jpg"; description = "107";};
    bitmap { filename = "5629.jpg"; description = "108";};
    bitmap { filename = "7405.jpg"; description = "109";};
    bitmap { filename = "7650.jpg"; description = "110";};
    bitmap { filename = "8030.jpg"; description = "111";};
    bitmap { filename = "8034.jpg"; description = "112";};
    bitmap { filename = "8080.jpg"; description = "113";};
    bitmap { filename = "8158.jpg"; description = "114";};
    bitmap { filename = "8161.jpg"; description = "115";};
    bitmap { filename = "8163.jpg"; description = "116";};
    bitmap { filename = "8170.jpg"; description = "117";};
    bitmap { filename = "8178.jpg"; description = "118";};
    bitmap { filename = "8180.jpg"; description = "119";};
    bitmap { filename = "8185.jpg"; description = "120";};
    bitmap { filename = "8186.jpg"; description = "121";};
    bitmap { filename = "8190.jpg"; description = "122";};
    bitmap { filename = "8191.jpg"; description = "123";};
    bitmap { filename = "8193.jpg"; description = "124";};
    bitmap { filename = "8200.jpg"; description = "125";};
    bitmap { filename = "8206.jpg"; description = "126";};
    bitmap { filename = "8251.jpg"; description = "127";};
    bitmap { filename = "8300.jpg"; description = "128";};
    bitmap { filename = "8341.jpg"; description = "129";};
    bitmap { filename = "8370.jpg"; description = "130";};
    bitmap { filename = "8400.jpg"; description = "131";};
    bitmap { filename = "8470.jpg"; description = "132";};
    bitmap { filename = "8490.jpg"; description = "133";};
    bitmap { filename = "8492.jpg"; description = "134";};
    bitmap { filename = "8499.jpg"; description = "135";};
    bitmap { filename = "8501.jpg"; description = "136";};
} emotional_pics_HV;


array {
    bitmap { filename = "1022.jpg"; description = "151";}P2;
    bitmap { filename = "1033.jpg"; description = "152";};
    bitmap { filename = "1040.jpg"; description = "153";};
    bitmap { filename = "1050.jpg"; description = "154";};
    bitmap { filename = "1052.jpg"; description = "155";};
    bitmap { filename = "1070.jpg"; description = "156";};
    bitmap { filename = "1113.jpg"; description = "157";};
    bitmap { filename = "1114.jpg"; description = "158";};
    bitmap { filename = "1120.jpg"; description = "159";};
    bitmap { filename = "1200.jpg"; description = "160";};
    bitmap { filename = "1201.jpg"; description = "161";};
    bitmap { filename = "1300.jpg"; description = "162";};
    bitmap { filename = "1302.jpg"; description = "163";};
    bitmap { filename = "1304.jpg"; description = "164";};
    bitmap { filename = "1310.jpg"; description = "165";};
    bitmap { filename = "1321.jpg"; description = "166";};
    bitmap { filename = "1525.jpg"; description = "167";};
    bitmap { filename = "1726.jpg"; description = "168";};
    bitmap { filename = "1930.jpg"; description = "169";};
    bitmap { filename = "1931.jpg"; description = "170";};
    bitmap { filename = "1932.jpg"; description = "171";};
    bitmap { filename = "3350.jpg"; description = "172";};
    bitmap { filename = "5920.jpg"; description = "173";};
    bitmap { filename = "5940.jpg"; description = "174";};
    bitmap { filename = "5950.jpg"; description = "175";};
    bitmap { filename = "5971.jpg"; description = "176";};
    bitmap { filename = "5972.jpg"; description = "177";};
    bitmap { filename = "7640.jpg"; description = "178";};
    bitmap { filename = "8160.jpg"; description = "179";};
    bitmap { filename = "8192.jpg"; description = "180";};
    bitmap { filename = "8475.jpg"; description = "181";};
    bitmap { filename = "8480.jpg"; description = "182";};
    bitmap { filename = "9622.jpg"; description = "183";};
    bitmap { filename = "9623.jpg"; description = "184";};
}emotional_pics_NV;

array {
     bitmap { filename = "3000.jpg"; description = "201";}P3;
     bitmap { filename = "3001.jpg"; description = "202";};
     bitmap { filename = "3005.1.jpg"; description = "203";};
     bitmap { filename = "3010.jpg"; description = "204";};
     bitmap { filename = "3030.jpg"; description = "205";};
     bitmap { filename = "3053.jpg"; description = "206";};
     bitmap { filename = "3059.jpg"; description = "207";};
     bitmap { filename = "3060.jpg"; description = "208";};
     bitmap { filename = "3063.jpg"; description = "209";};
     bitmap { filename = "3064.jpg"; description = "210";};
     bitmap { filename = "3068.jpg"; description = "211";};
     bitmap { filename = "3069.jpg"; description = "212";};
     bitmap { filename = "3071.jpg"; description = "213";};
     bitmap { filename = "3080.jpg"; description = "214";};
     bitmap { filename = "3100.jpg"; description = "215";};
     bitmap { filename = "3110.jpg"; description = "217";};
     bitmap { filename = "3120.jpg"; description = "218";};
     bitmap { filename = "3130.jpg"; description = "219";};
     bitmap { filename = "3131.jpg"; description = "220";};
     bitmap { filename = "3140.jpg"; description = "221";};
     bitmap { filename = "3168.jpg"; description = "222";};
     bitmap { filename = "3170.jpg"; description = "223";};
     bitmap { filename = "3266.jpg"; description = "224";};
     bitmap { filename = "3530.jpg"; description = "225";};
     bitmap { filename = "6313.jpg"; description = "226";};
     bitmap { filename = "6350.jpg"; description = "227";};
     bitmap { filename = "6520.jpg"; description = "228";};
     bitmap { filename = "6563.jpg"; description = "229";};
     bitmap { filename = "9075.jpg"; description = "230";};
     bitmap { filename = "9183.jpg"; description = "231";};
     bitmap { filename = "9187.jpg"; description = "232";};
     bitmap { filename = "9252.jpg"; description = "233";};
     bitmap { filename = "9325.jpg"; description = "234";};
     bitmap { filename = "9405.jpg"; description = "235";};
     bitmap { filename = "9410.jpg"; description = "236";};
     bitmap { filename = "9412.jpg"; description = "237";};
     bitmap { filename = "9413.jpg"; description = "238";};
     bitmap { filename = "9570.jpg"; description = "239";};
     bitmap { filename = "9635.1.jpg"; description = "240";};
     bitmap { filename = "9940.jpg"; description = "241";};
}emotional_pics_LV;





#trial for films
trial{

	stimulus_event {
		video V1;
	}event1;

   nothing {};
   code = "";
   time = 10;
   port_code = 0;	
		
} trial_films;


##trial for music
trial {
    stimulus_event {
      sound M1;     
   } event2;

   nothing {};
   code = "";
   time = 10;
   port_code = 0;	

} trial_music;






trial {
   trial_duration = 2000;



   stimulus_event {
      picture {
         bitmap P2;
         
         x = 0; y = 0;
       
      } main_pic;
   } main_event;

   nothing {};
   code = "";
   time = 10;
   port_code = 0;	

} main_trial;

 

begin_pcl;
empty_trial.present();
#Shuffle the stimulus array before running the loop
emotional_films.shuffle();
emotional_music.shuffle();
int j = 1;
int i = 1;
int k = 1;

loop int z = 1 until z > (5*emotional_films.count()) begin
#loop int j = 1 until j > emotional_films.count() begin
	empty_trial.present();
	#wait_trial.present();
   fix_trial.set_duration (random(6000,8000));
	fix_trial.present ();

	# FILM trigger here
	event1.set_stimulus( emotional_films[j] );
	#event1.set_event_code( emotional_films[j].description() );
	#event1.set_port_code( port_code );
	string code = emotional_films[j].description();
	int pos = code.find( " " );
	int port_code = int( code.substring( pos + 1, code.count() - pos ) );
	event1.set_event_code( code );
	event1.set_port_code( port_code );

	empty_trial.present();
	trial_films.present();
	empty_trial.present();
	rate_trial.present();

#	loop int i = 1 until i > emotional_music.count() begin
#		loop int k = 1 until k > emotional_pics_HV.count() begin
			


	# MUSIC
	empty_trial.present();
   
   
	fix_trial.set_duration (random(6000,8000));
	fix_trial.present ();
	
	#emotional_music.shuffle();
	event2.set_stimulus( emotional_music[i] );
	event2.set_event_code( emotional_music[i].description() );
	event2.set_port_code( int( emotional_music[i].description() ) );

	empty_trial.present();
	trial_music.present();
   empty_trial.present();
   rate_trial.present();  
	
   # PICTURE
   empty_trial.present();
	fix_trial.set_duration (random(6000,8000));
	fix_trial.present ();
   empty_trial.present();
	emotional_pics_HV.shuffle();

	
	loop int x = 1 until x > 8 begin

		 #emotional_pics_NV.shuffle();
		 main_pic.set_part( 1, emotional_pics_HV[x] );
		 main_event.set_event_code( emotional_pics_HV[x].description() );
		 main_event.set_port_code( int( emotional_pics_HV[x].description() ) );
		
       empty_trial.present();
		 main_trial.present();
		 empty_trial.present();	
          fix_trial.set_duration(int (1000));
	       fix_trial.present ();
          empty_trial.present();		 
		 x = x + 1;
	 end;
	#empty_trial.present();
   rate_trial_pic.present();
			 
	j = j + 1;
	i = i + 1;
	k = k + 1;
	z = z + 1;
#k = k + 1;


		
#end;


#i = i + 1;
#end;

	
end;