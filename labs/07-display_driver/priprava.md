``` javascript
{
  signal:
  [
    ['Digit position',
      {name: 'Common anode: AN(3)', wave: 'xx01..01..01'},
      {name: 'AN(2)', wave: 'xx101..01..0'},
      {name: 'AN(1)', wave: 'xx1.01..01..'},
      {name: 'AN(0)', wave: 'xx1..01..01.'},
    ],
    ['Seven-segment data',
      {name: '4-digit value to display', wave: 'xx3333555599', data: ['3','1','4','2','3','1','4','2','3','1']},
      {name: 'Cathod A: CA', wave: 'xx01.0.1.0.1'},
      {name: 'Cathod B: CB', wave: 'xx0.........'},
      {name: 'CC', wave: 'xx0..10..10.'},
      {name: 'CD', wave: 'xx01.0.1.0.1'},
      {name: 'CE', wave: 'xx1..01..01.'},
      {name: 'CF', wave: 'xx1.01..01..'},
      {name: 'Cathod G: CG', wave: 'xx010..10..1'},
    ],
    {name: 'Decimal point: DP', wave: 'xx01..01..01'},
  ],
  head:
  {
    text: '                    4ms   4ms   4ms   4ms   4ms   4ms   4ms   4ms   4ms   4ms',
  },
}
```


![wavedrom (1)](https://user-images.githubusercontent.com/99763701/160439473-696d0585-07f0-47c6-8533-918b160edec0.png)

https://www.pantechsolutions.net/vhdl-code-for-uart-serial-communication

https://www.mikrocontroller.net/attachment/9036/ALSE_UART_us.pdf

https://www.instructables.com/Design-of-UART-in-VHDL/

https://www.nandland.com/vhdl/modules/module-uart-serial-port-rs232.html

https://forum.digikey.com/t/uart-vhdl/12670

https://github.com/jakubcabal/uart-for-fpga

http://esd.cs.ucr.edu/labs/uart/uart.html

http://ece-research.unm.edu/jimp/vhdl_fpgas/slides/UART.pdf

https://ieeexplore.ieee.org/document/5873448

https://jit.sirim.my/Volume/Volume%2011%20No.2%202002/design_of_a_mini-uart_using_vhdl.pdf

https://www.researchgate.net/publication/254034888_VHDL_implementation_of_UART_with_status_register

https://academic.csuohio.edu/chu_p/rtl/fpga_vhdl_book/fpga_vhdl_sample_chapter.pdf

https://projects.digilentinc.com/alexey-sudbin/uart-interface-in-vhdl-for-basys3-board-eef170

