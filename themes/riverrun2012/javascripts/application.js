$(document).ready(function () {
$(window).scroll(function() {
    if ($(this).scrollTop() > 1330) {
      $('#back_to_top').fadeIn(300);

      if (!$('body').hasClass('night')) {
        Header.start_night();
      }
    } else {
      $('#back_to_top').fadeOut(300);
    }
  });
							
  Header.start_day();
  $('#clouds').animate({backgroundPosition: '-10000px 0'}, 1500000, 'linear', function(){});

  $('div#featured_speakers ul').shuffle();
  for (var i = 1; i < 5; i++) {
    $('div#featured_speakers li:nth-child(' + i + ')').show();
  }

  // Thank you
  $('#thank_you_trigger').fancybox({
    autoDimensions: false,
    width: 664,
    height: 416,
    margin: 0,
    padding: 0,
    overlayColor: '#444',
    overlayOpacity: 0.44
  });

  $('#thank_you_trigger').trigger('click');

  // Subscriber email input
  if ($('#subscriber_email').val()) {
    $('#subscriber_email_label').hide();
  }

  $('#subscriber_email_label').click(function() {
    $(this).hide();
  });

  $('#subscriber_email').focus(function() {
    $('#subscriber_email_label').hide();
  });

  $('#subscriber_email').blur(function() {
    if (!$(this).val()) {
      $('#subscriber_email_label').show();
    }
  });

  $(window).scroll(function() {
    if ($(this).scrollTop() > 1330) {
      $('#back_to_top').fadeIn(300);

      if (!$('body').hasClass('night')) {
        Header.start_night();
      }
    } else {
      $('#back_to_top').fadeOut(300);
    }
  });
});

var scroll_speed = function(from, to) {
  var divisor = 4;
  var foffset = $(from).offset();
  var toffset = $(to).offset();
  var speed = 0;

  if (foffset.top > toffset.top) {
    // We are below the target, go up
    speed = (foffset.top - toffset.top) / divisor;
  } else {
    // We are above the target, go down
    speed = (toffset.top - foffset.top) / divisor;
  }

  // 300 milliseconds min
  if (speed < 300) {
    speed = 300;
  }

  // 1 second max
  if (speed > 1000) {
    speed = 1000;
  }

  return speed;
}

Header = {
  back_to_top: function() {
    $.scrollTo('#header', scroll_speed('#back_to_top', '#header'));
  },

  start_day: function() {
    $('body').removeClass('night');

    Header.move_sailboat(1, '-=10', '+=25', 7000);
    Header.move_sailboat(2, '-=6', '-=65', 25000);
    Header.move_sailboat(3, '+=3', '-=35', 30000);
    Header.move_sailboat(4, '+=0', '+=20', 30000);
    Header.move_bird();
  },

  start_night: function() {
    $('body').addClass('night');
    Header.animate_abominable_snowman();
  },

  move_sailboat: function(sailboat, top_dir, left_dir, speed) {
    $('#sailboat_' + sailboat).animate({top: top_dir, left: left_dir}, speed, 'swing', function() {
      top_dir = Header.opposite_direction(top_dir);
      left_dir = Header.opposite_direction(left_dir);
      setTimeout('Header.move_sailboat(' + sailboat + ', \'' + top_dir + '\', \'' + left_dir + '\', ' + speed + ');', 1500);
    });
  },

  move_bird: function() {
    $('#bird').animate({top: '+=35', right: '+=400'}, 12000, 'linear', function() {
      $(this).animate({top: '-=35', right: '-=400'}, 12000, 'linear', function() {
        setTimeout(function() {
          $('#bird').animate({top: '-=60', right: '-=200'}, 8000, 'linear', function() {
            $(this).animate({top: '+=60', right: '+=200'}, 8000, 'linear', function() {
              setTimeout('Header.move_bird();', 4000);
            });
          });
        }, 2000);
      });
    });
  },

  animate_abominable_snowman: function() {
    $('#abominable_snowman').css({backgroundPosition: '0 -26px'});
    $('#abominable_snowman').css({marginTop: 0});
    setTimeout(function() {
      $('#abominable_snowman').css({backgroundPosition: '0 0'});
      $('#abominable_snowman').css({marginTop: '1px'});
      setTimeout('Header.animate_abominable_snowman();', 1000);
    }, 200);
  },

  opposite_direction: function(direction) {
    return (direction.substring(0, 1) == '+') ? '-' + direction.substring(1) : '+' + direction.substring(1);
  },

  secret_sauce: function() {
    // $('#gary div.headshot').css({backgroundPosition: '-1428px 0'});
    // $.scrollTo('#gary', scroll_speed('#abominable_snowman', '#gary'));
  }
}

var expand_text = function(obj) {
  $(obj + ' .read_more').hide();
  $(obj + ' .truncate').slideDown(200);
}

var contract_text = function(obj) {
  $.scrollTo(obj, 200, function() {
    $(obj + ' .truncate').slideUp(200, function() {
      $(obj + ' .read_more').show();
    });
  });
}