# Mario’s Coin Collection Adventure - FPGA

### A Special Thanks

I would like to express my deepest gratitude to Project F for sharing their excellent HDMI code on GitHub. I have successfully implemented HDMI output in my project by referencing their code.

[projf/display_controller: FPGA display controller with support for VGA, DVI, and HDMI. (github.com)](https://github.com/projf/display_controller/tree/master)

### Gameplay Video

### Overview

  ![그림입니다. 원본 그림의 이름: changed_background.png 원본 그림의 크기: 가로 320pixel, 세로 240pixel](E:\works\hdl\mario_brothers-FPGA\README.assets\EMB00003d945751.png)    ![그림입니다. 원본 그림의 이름: changed_background.png 원본 그림의 크기: 가로 172pixel, 세로 160pixel](E:\works\hdl\mario_brothers-FPGA\README.assets\EMB00003d945752.png)    ![그림입니다. 원본 그림의 이름: changed_background.png 원본 그림의 크기: 가로 236pixel, 세로 160pixel](E:\works\hdl\mario_brothers-FPGA\README.assets\EMB00003d945757.png)  

  ![그림입니다. 원본 그림의 이름: 그림1_changed_background.png 원본 그림의 크기: 가로 22pixel, 세로 32pixel](E:\works\hdl\mario_brothers-FPGA\README.assets\EMB00003d94574b.png)    ![그림입니다. 원본 그림의 이름: 그림3_changed_background.png 원본 그림의 크기: 가로 27pixel, 세로 28pixel](E:\works\hdl\mario_brothers-FPGA\README.assets\EMB00003d94574c.png)    ![그림입니다. 원본 그림의 이름: changed_background.png 원본 그림의 크기: 가로 28pixel, 세로 32pixel](E:\works\hdl\mario_brothers-FPGA\README.assets\EMB00003d94574d.png)    ![그림입니다. 원본 그림의 이름: changed_background.png 원본 그림의 크기: 가로 28pixel, 세로 32pixel](E:\works\hdl\mario_brothers-FPGA\README.assets\EMB00003d94574e.png)    ![그림입니다. 원본 그림의 이름: changed_background.png 원본 그림의 크기: 가로 28pixel, 세로 32pixel](E:\works\hdl\mario_brothers-FPGA\README.assets\EMB00003d94574f.png)    ![그림입니다. 원본 그림의 이름: changed_background.png 원본 그림의 크기: 가로 32pixel, 세로 32pixel](E:\works\hdl\mario_brothers-FPGA\README.assets\EMB00003d945750.png)  



- Press `btn_in[0]` to start the game.
- Use `btn_in[2]` (left), `btn_in[1]` (right), and `btn_in[3]` (jump) to control Mario’s direction.
- The game ends when you collect 99 coins while avoiding 6 Goombas that are randomly generated.
- If you collide with a Goomba, you lose a heart. Collecting a coin increases your coin count.
- If you collide with a Goomba when you only have one heart left, it’s GAME OVER.
- If you collect 99 coins, you reach the ENDING.
