import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Assets {
  static final jciWorldConLogoSvg = SvgPicture.asset(
    'assets/logo/jci_worldCon_logo_svg.svg',
  );

  static final jciWorldConLogo = Image.asset(
    'assets/logo/jci_worldCon_logo-removebg-preview.png',
    height: 30,
    fit: BoxFit.contain,
  );

  static final profileIcon = Image.asset(
    'assets/icons/profile_icon.png',
    height: 30,
    fit: BoxFit.contain,
  );

  static Image homeBackground01(BuildContext context) {
    return Image.asset(
      'assets/images/home_background_01.png',
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height * 0.8,
    );
  }

  static final calendarIcon = Image.asset(
    'assets/icons/calendar_icon.png',
    fit: BoxFit.cover,
  );

  static final youtubeVideoPlayer = Image.asset(
    'assets/images/youTube_video_player_png.png',
    fit: BoxFit.cover,
  );

  static final welcomeToClarkPampangaPicture = Image.asset(
    'assets/images/welcome_to_clark_pampanga_picture.png',
    width: double.infinity,
    height: double.infinity,
    fit: BoxFit.cover,
  );

  static final philippineAirlinesPng = Image.asset(
    'assets/images/philippine_airlines_png.png',
  );

  static final readyForJciWorldCongress2026Img = Image.asset(
    'assets/images/ready_for_jci_Manila_Congress_2026_img.png',
    fit: BoxFit.cover,
  );

  static final twChatAlt2Regular = Image.asset(
    'assets/icons/tw_chat_alt-2_regular.png',
  );

  static final locationIconJciHomepage = Image.asset(
    'assets/icons/location_icon_JCI_homepage.png',
    height: 30,
    fit: BoxFit.cover,
  );

  static final callIconHomepage = Image.asset(
    'assets/icons/call_icon_homepage.png',
    height: 30,
    fit: BoxFit.cover,
  );

  static final messageIconHomepage = Image.asset(
    'assets/icons/message_icon_homepage.png',
    height: 20,
    fit: BoxFit.cover,
  );

  static final clarkMap = Image.asset(
    'assets/images/clark_map.png',
    fit: BoxFit.cover,
  );

  static final twitter = Image.asset(
    'assets/icons/twitter.png',
    height: 20,
    fit: BoxFit.cover,
  );

  static final facebook = Image.asset(
    'assets/icons/facebook.png',
    height: 20,
    fit: BoxFit.cover,
  );

  static final instagram = Image.asset(
    'assets/icons/instagram.png',
    height: 20,
    fit: BoxFit.cover,
  );

  static final whatsApp = Image.asset(
    'assets/icons/whats_app.png',
    height: 20,
    fit: BoxFit.cover,
  );

  static final jciLogoPng = Image.asset(
    'assets/logo/jci_logo_png.png',
    height: 70,
  );

  static final seeYouIn2026 = Image.asset(
    'assets/images/see_you_in_2026_bg.png',
    fit: BoxFit.cover,
  );

  static final ihotelLogoBlue = Image.asset(
    'assets/logo/ihotel_logo.png',
    height: 30,
    fit: BoxFit.cover,
  );

  static final phLogo = Image.asset(
    'assets/logo/ph_logo-removebg-preview.png',
    height: 20,
    fit: BoxFit.contain,
  );

  static final worldConIagTraining = Image.asset(
    'assets/images/worldCon _IAG_Training.png',
  );

  static final hotel01 = Image.asset('assets/images/hotel_01.png');

  static final hotel02 = Image.asset('assets/images/hotel_02.png');

  static final hotel03 = Image.asset('assets/images/hotel_03.png');

  static final hotel04 = Image.asset('assets/images/hotel_04.png');

  static final ihotelLogoWhite = Image.asset(
    'assets/logo/ihotel_logo_white.png',
  );

  static final shareLocationIcon = Image.asset(
    'assets/icons/share_location_icon.png',
    fit: BoxFit.contain,
  );

  static final phoneLogo = Image.asset('assets/logo/phone_logo.png');

  static final messageLogo = Image.asset('assets/logo/message_logo.png');

  static final whatsAppLogo = Image.asset('assets/logo/whatsApp_logo.png');

  static final mapView = Image.asset('assets/images/map_view.png');

  static final twinGuestRoomPoolView = Image.asset(
    'assets/images/twin_guest_room_pool_view.png',
  );

  static final kingOneBedroomSuiteWithBalcony = Image.asset(
    'assets/images/king_one_bedroom_suite_with_balcony.png',
  );

  static final kingTwoBedroomGovernorSuite = Image.asset(
    'assets/images/king_two_bedroom_governor_suite.png',
  );

  static final faqBackgroundPhoto = Image.asset(
    'assets/images/faq_bg_photo.png',
  );

  static final mapArrivingIcon = Image.asset(
    'assets/icons/map_arriving_icon.png',
    height: 50,
  );

  static final mapPagePhoto = Image.asset(
    'assets/images/map_page_photo.png',
    height: 300,
    width: 300,
    fit: BoxFit.cover,
  );

  static final laSavillaPhoto = Image.asset(
    'assets/images/la_sevilla_photo.png',
  );

  static final richardLimJrPhoto = Image.asset(
    'assets/images/richard_lim_jr_photo.png',
  );

  static final footerLogo = Image.asset(
    'assets/logo/footer_logo_png.png',
    fit: BoxFit.cover,
  );

  static final qrImage = Image.asset(
    'assets/images/qr_img.png',
    fit: BoxFit.cover,
  );

  static final ordersImg = Image.asset('assets/images/orders_img.png');

  static final ordersScreenTicketImg = Image.asset(
    'assets/images/orders_screen_ticket_img.png',
  );

  static final messageCircleIcon = Image.asset(
    'assets/icons/message_cirlce_icon.png',
  );
}
