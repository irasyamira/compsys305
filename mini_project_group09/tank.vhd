library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;


entity tank is

   port	(signal left_click, clk 			: in std_logic;
			signal rand: in std_logic_vector(10 downto 0);
			signal mouse_col : in std_logic_vector (9 downto 0);
			signal pixel_row, pixel_column				: in std_logic_vector(10 downto 0); 
			signal horiz_sync_out,vert_sync_out		: in std_logic;
			signal red,green,blue 			: out std_logic);		
			
end tank;

architecture behavior of tank is
  
signal red_data, green_data, blue_data	: std_logic;
signal vert_sync_int, reset	: std_logic;
signal tank_on, player_on, bullet_on, bullet_fired: std_logic;
signal size 								: std_logic_vector(10 downto 0);  
signal bullet_size 								: std_logic_vector(10 downto 0); 
signal tank_x_motion, player_x_motion 	 : std_logic_vector(10 downto 0);
signal bullet_y_motion						: std_logic_vector(10 downto 0);
signal tank_x_pos							: std_logic_vector(10 downto 0); 
signal tank_y_pos				: std_logic_vector(10 downto 0);
signal bullet_x_pos : std_logic_vector(10 downto 0);
signal bullet_y_pos	: std_logic_vector(10 downto 0);
signal player_y_pos,player_x_pos 	: std_logic_vector(10 downto 0);


begin           

size <= conv_std_logic_vector(10,11);
bullet_size <= conv_std_logic_vector(4,11);
tank_y_pos <= conv_std_logic_vector(100,11);
player_y_pos <= conv_std_logic_vector(380,11);

		-- need internal copy of vert_sync to read
vert_sync_int <= vert_sync_out;

red_data <=  '1' and not player_on and not bullet_on;
green_data <= '1' and not tank_on and not bullet_on;
blue_data <=  '1' and not player_on and not tank_on;



rgb_display: process (tank_x_pos, tank_y_pos, player_x_pos, player_y_pos,bullet_x_pos, bullet_y_pos, pixel_column, pixel_row, size, bullet_size)
begin
			-- set tank_on ='1' to display tank
 if ('0' & tank_x_pos <= pixel_column + size) and
 	(tank_x_pos + size >= '0' & pixel_column) and
 	('0' & tank_y_pos <= pixel_row + size) and
 	(tank_y_pos + size >= '0' & pixel_row ) then
 		tank_on <= '1';
 	else
 		tank_on <= '0';
	end if;
		
	 if ('0' & player_x_pos <= pixel_column + size) and
 	(player_x_pos + size >= '0' & pixel_column) and
 	('0' & player_y_pos <= pixel_row + size) and
 	(player_y_pos + size >= '0' & pixel_row ) then
 		player_on <= '1';
 	else
 		player_on <= '0';
	end if;
	
	if ('0' & bullet_x_pos <= pixel_column + bullet_size) and
 	(bullet_x_pos + bullet_size >= '0' & pixel_column) and
 	('0' & bullet_y_pos <= pixel_row + bullet_size) and
 	(bullet_y_pos + bullet_size >= '0' & pixel_row ) then
 		bullet_on <= '1';
 	else
 		bullet_on <= '0';
	end if;
	
end process rgb_display;

move_tank: process
begin
	-- move tank once every vertical sync
	wait until vert_sync_int'event and vert_sync_int = '1';
	
			if ('0' & tank_x_pos) >= conv_std_logic_vector(640,11) - size then
				tank_x_motion <= - conv_std_logic_vector(2,11);
			elsif tank_x_pos <= size then
				tank_x_motion <= conv_std_logic_vector(2,11);
			end if;
			-- compute next tank x position
				tank_x_pos <= tank_x_pos + tank_x_motion;

			-- add boundary for the player 
			if ('0' & mouse_col) >= "0111000000" then
				if ('0' & player_x_pos) >= conv_std_logic_vector(640,11) - size then
					player_x_pos <= player_x_pos + conv_std_logic_vector(0,11);
				else
					player_x_pos <= player_x_pos + conv_std_logic_vector(3,11);
				end if;
			elsif mouse_col <= "0100000000" then
				if player_x_pos <= size then
					player_x_pos <= player_x_pos - conv_std_logic_vector(0,11);
				else 
					player_x_pos <= player_x_pos - conv_std_logic_vector(3,11);
				end if;
			else
				player_x_pos <= player_x_pos;
			end if;
			
		if (left_click = '1') and (bullet_fired = '0') then
			bullet_fired <= '1';
			bullet_x_pos <= player_x_pos;
			bullet_y_pos <= player_y_pos;
			bullet_y_motion <= - conv_std_logic_vector(4,11);
		end if;
		
		if bullet_fired = '1' then
			bullet_y_pos <= bullet_y_pos + bullet_y_motion;
		end if;
		
		-- if exceeds boundary or hits the upper tank then bullet disappears
		if bullet_y_pos >= conv_std_logic_vector(640,11) - bullet_size then
			bullet_fired <= '0';
		end if;
		
		-- collision with the tank
		if bullet_y_pos <= tank_y_pos + size and 
			bullet_x_pos + bullet_size <= tank_x_pos + size and
			bullet_x_pos + bullet_size <= tank_x_pos + size then
			bullet_fired <= '0';
			bullet_x_pos <= conv_std_logic_vector(500,11);
			bullet_y_pos <= conv_std_logic_vector(700,11);
		end if;
			
end process move_tank;
	red <= red_data;
	green <= green_data;
	blue <= blue_data;
end behavior;
