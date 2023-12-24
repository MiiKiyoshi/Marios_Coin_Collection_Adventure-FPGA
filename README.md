# Mario’s Coin Collection Adventure - FPGA

### A Special Thanks

I would like to express my deepest gratitude to Project F for sharing their excellent HDMI code on GitHub. I have successfully implemented HDMI output in my project by referencing their code.

[projf/display_controller: FPGA display controller with support for VGA, DVI, and HDMI. (github.com)](https://github.com/projf/display_controller/tree/master)

### Gameplay Video
![Marios_Coin_Collection_Adventure-FPGA](https://github.com/MiiKiyoshi/Marios_Coin_Collection_Adventure-FPGA/assets/121929511/c49682e9-8619-4702-9a29-0902202458fe)
### Overview

  ![image](https://github.com/MiiKiyoshi/Marios_Coin_Collection_Adventure-FPGA/assets/121929511/700845d0-4263-474e-8f18-9c6fab7cb0d4)    ![image](https://github.com/MiiKiyoshi/Marios_Coin_Collection_Adventure-FPGA/assets/121929511/77caaa52-9c34-401e-94cf-9df8cdac68e7)    ![image](https://github.com/MiiKiyoshi/Marios_Coin_Collection_Adventure-FPGA/assets/121929511/4b3d5d1d-32e9-481b-8d2c-af8d298b23a9)
  
  ![image](https://github.com/MiiKiyoshi/Marios_Coin_Collection_Adventure-FPGA/assets/121929511/a5c411a9-8baa-4089-93a7-d28a001a3604)    ![image](https://github.com/MiiKiyoshi/Marios_Coin_Collection_Adventure-FPGA/assets/121929511/a9059fc4-920e-4198-acc6-d8f4689bb201)    ![image](https://github.com/MiiKiyoshi/Marios_Coin_Collection_Adventure-FPGA/assets/121929511/019c2162-3a5e-45bb-88a8-edb54149ee0f)    ![image](https://github.com/MiiKiyoshi/Marios_Coin_Collection_Adventure-FPGA/assets/121929511/958dae9e-e603-4a90-8ff6-82e8aee71543)    ![image](https://github.com/MiiKiyoshi/Marios_Coin_Collection_Adventure-FPGA/assets/121929511/03b2e530-a376-4030-a00f-36db0704f620)    ![image](https://github.com/MiiKiyoshi/Marios_Coin_Collection_Adventure-FPGA/assets/121929511/7d1b9b3f-b09f-42d2-8bec-8f3cb43bcf1d)
 



- Press `btn_in[0]` to start the game.
- Use `btn_in[2]` (left), `btn_in[1]` (right), and `btn_in[3]` (jump) to control Mario’s direction.
- The game ends when you collect 99 coins while avoiding 6 Goombas that are randomly generated.
- If you collide with a Goomba, you lose a heart. Collecting a coin increases your coin count.
- If you collide with a Goomba when you only have one heart left, it’s GAME OVER.
- If you collect 99 coins, you reach the ENDING.
