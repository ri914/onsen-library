$(function() {
  $('.mainimg-tate').vegas({
    slides: [
      { src: 'images/E7DF5426-297B-4B63-91CB-F0ED40A9E910_1_105_c.jpeg' },
      { src: 'images/FCEBF2BC-80A1-4449-A52A-F83CF9590C05_1_105_c.jpeg' },
      { src: './images/tate_3.jpg' },
    ],
    transition: 'blur',
    animation: 'kenburns',
    delay: 6000,
    animationDuration: 10000,
    timer: false,
  });

  $('.mainimg-yoko').vegas({
    slides: [
      { src: './images/yoko_1.jpg' },
      { src: './images/yoko_2.jpg' },
      { src: './images/yoko_3.jpg' },
    ],
    transition: 'blur',
    animation: 'kenburns',
    delay: 6000,
    animationDuration: 10000,
    timer: false,
  });

  $('.mainimg-right').vegas({ // 右側のスライドショー設定
    slides: [
      { src: './images/right_1.jpg' }, // 1枚目の写真指定
      { src: './images/right_2.jpg' }, // 2枚目の写真指定
      { src: './images/right_3.jpg' }, // 3枚目の写真指定
    ],
    transition: 'blur',
    animation: 'kenburns',
    delay: 6000,
    animationDuration: 10000,
    timer: false,
  });
});
