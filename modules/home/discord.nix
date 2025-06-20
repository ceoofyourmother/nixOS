{ pkgs, ... }: {
  home.packages = with pkgs; [
    vesktop # If you prefer this

    (discord.override {
     withOpenASAR = true; # can do this here too
      withVencord = true;
    })
  ];
xdg.configFile."vesktop/themes/custom.css".text = ''

:root {
  /*Dark mode*/
    --dark-bg: rgba(0, 0, 0, 0.68);
    /*rgba(240,185,190,0.113); to achieve screenshot looking*/
    --dark-flyout: rgba(30, 30, 30);
    --dark-accent: rgb(76, 194, 255);
    --dark-accent-hovered: rgb(65, 163, 214);
    /*also disabled button*/
    --dark-accent-font-color: black;
    --dark-button: rgb(45, 45, 45);
    --dark-button-border: rgb(60, 60, 60);
    --dark-button-font-color: white;
    --dark-background-accent: rgba(50, 50, 50, 0.9);
    --dark-status-panel: rgba(30, 30, 30, 0.4);
    /*Light mode*/
    --light-bg: transparent;
    --light-flyout: rgb(255, 255, 255);
    --light-accent: rgb(0, 120, 212);
    --light-accent-hovered: rgb(0, 94, 167);
    /*also disabled button*/
    --light-accent-font-color: white;
    --light-button: rgb(251, 251, 251);
    --light-button-border: rgb(204, 204, 231);
    --light-button-font-color: black;
    --light-background-accent: rgba(160, 160, 160, 0.9);
    --light-status-panel: rgba(255, 255, 255, 0.4);

    /* Titlebar */
    --custom-app-top-bar-height: calc(24px + var(--space-sm));
    /* Set to 0 if you don't want to use Discord title-bar */
    --title-bar-icon: flex;
    /* Set to none to remove icons */
}

.visual-refresh.theme-dark { 
  --app-bg: var(--dark-bg);
  
  /*Layer 1*/
  --background-primary: rgba(var(--dark-layer1),0.05); /* Activity Card Empty */
  --background-surface-high: rgba(var(--dark-layer1),0.05); /* Activity Card */
  --background-base-low: rgba(var(--dark-layer1),0.05); /* Follow channel */
  --background-secondary-alt: rgba(var(--dark-layer1),0.05);
  --input-background: rgba(var(--dark-layer1),0.05);
  --background-secondary: rgba(var(--dark-layer1),0.05);
  --background-tertiary: rgba(var(--dark-layer1),0.06);
  --channeltextarea-background: rgba(var(--dark-layer1),0.05);
  --bg-mod-subtle: rgba(var(--dark-layer1),0.1);

  /*Flyout*/
  --background-floating: var(--dark-flyout); 

  /*Select or hover*/
  --layer1: var(--dark-layer1);
  --flyout: var(--dark-flyout);
  --background-modifier-selected: rgba(var(--dark-select),0.07);
  --background-modifier-active: rgba(var(--dark-select),0.07);
  --background-modifier-hover: rgba(var(--dark-select),0.05);

  /*variables*/
  --accent: var(--dark-accent);
  --accent-hovered: var(--dark-accent-hovered);
  --accent-font: var(--dark-accent-font-color);
  --button: var(--dark-button);
  --button-border: var(--dark-button-border);
  --button-font-color: var(--dark-button-font-color);
  --dm-about: var(--dark-dm-about);
  --background-accent: var(--dark-background-accent);
  --status-panel: var(--dark-status-panel);
} 
.visual-refresh.theme-light{
  --app-bg: var(--light-bg); 

  /* Layer 1 */
  --background-primary: rgba(var(--light-layer1),0.7); /* Activity Card Empty */
  --background-surface-high: rgba(var(--light-layer1), 0.7); /* Activity Card */
  --background-base-low: rgba(var(--light-layer1),0.7); /* Follow channel */
  --background-surface-higher: rgba(var(--light-layer1), 0.4);
  --background-secondary-alt: rgba(var(--light-layer1), 0.1);
  --input-background: rgba(var(--light-layer1), 0.7); 
  --background-secondary: rgba(var(--light-layer1), 0.7);
  --background-tertiary: rgba(var(--light-layer1), 0.7);
  --channeltextarea-background: rgba(var(--light-layer1), 0.4);
  --bg-mod-subtle: rgba(0,0,0,0.1);

  /* Flyout */
  --background-floating: var(--light-flyout);

  /* Select or hover */
  --layer1: var(--light-layer1);
  --flyout: var(--light-flyout);
  --background-modifier-selected: rgba(var(--light-select), 0.07);
  --background-modifier-active: rgba(var(--light-select), 0.07);
  --background-modifier-hover: rgba(var(--light-select), 0.05);

  /* Variables */
  --accent: var(--light-accent);
  --accent-hovered: var(--light-accent-hovered);
  --accent-font: var(--light-accent-font-color);
  --button: var(--light-button);
  --button-border: var(--light-button-border);
  --button-font-color: var(--light-button-font-color);
  --dm-about: var(--light-dm-about);
  --background-accent: var(--light-background-accent);
  --status-panel: var(--light-status-panel);
}

.app__160d8,
.bg__960e4,
.appMount__51fd7,
.wrapper_ef3116,
.visual-refresh .chat_f75fb0,
.chatContent_f75fb0, /*Server Chat*/
.scroller__99e7c, .privateChannels__35e86, /*DMs Sidebar*/
.themed__9293f, .nowPlayingColumn__133bf, /*DMs misc*/
.visual-refresh .tabBody__133bf, 
.container__7d20c,
.container__133bf,
#app-mount .container__2637a, .sidebar_c48ade /*Server Sidebar*/,
.visual-refresh .clickable_f37cb1, .visual-refresh .hasBanner_f37cb1 .header_f37cb1, /*Server name*/
:where(.visual-refresh) .themedBackground__74017, /*Server Textarea*/
.visual-refresh .container_f369db, /* Forum */
.panels_c48ade, .container__37e49, /*User Profile*/
.visual-refresh .sidebar_c48ade:after,
.footer__214dc /*Discovery*/,
.visual-refresh .contentRegionScroller__23e6b, .visual-refresh .sidebarRegionScroller__23e6b, .visual-refresh .standardSidebarView__23e6b, .contentRegion__23e6b, .layer__960e4 /*Settings*/, 
.fieldList__1fed1,
.children__9293f:after,
.visual-refresh .wrapper_d852db, .visual-refresh .wrapper_fc8177 /* Skeleton loading */,
.visual-refresh .content__908e2 /*Divider*/ {
  background-color: transparent !important;
  background: transparent !important;
}

/*Server*/
.visual-refresh .channelTextArea_f75fb0 {
  background-color: var(--channeltextarea-background);
}

/*Buttons*/
.lookFilled__201d5.colorBrand__201d5 {
  background-color: var(--accent);
  color: var(--accent-font);
}
.lookFilled__201d5.colorBrand__201d5:hover {
  background-color: var(--accent-hovered);
}
.lookFilled__201d5.colorBrand__201d5:disabled{
  background-color: var(--accent-hovered);
}
.lookFilled__201d5.colorPrimary__201d5, .lookFilled__201d5.colorPrimary__201d5:disabled {
  background-color: var(--button);
  color: var(--button-font-color);
  outline: solid var(--button-border) 1.5px;
}

/*Toggle*/
.container__87bf1.checked__87bf1{
  background-color: var(--accent) !important;
}
.container__87bf1.checked__87bf1:hover{
  background-color: var(--accent-hovered) !important;
}

/*Special Flyout*/
.messagesPopoutWrap__45690,
.container__2692d,
.container_fc561d,
.contentWrapper__08434,
.header_fed6d3,
.wrapper__4e6ce,
.popout__3f413,
.wrapper_c0e32c,
.quickswitcher_ac6cb0,
.vc-notification-root,
.container_cc2dff, .reactors_cc2dff,
.emojiRow_e7d73e .emojiAliasInput_e7d73e .emojiInput_e7d73e,
.main__949ab,
.streamPreview__6da2d {
  background-color: var(--flyout);
}

/*Thread*/
.container__01ae {
  background-color: rgba(var(--layer1),0.05);
}
.floating__01ae2 {
  backdrop-filter: brightness(0.65) blur(16px) saturate(1.5);
}

/*Misc*/
.overlayBackground_c69a7b {
  background-color: var(--dm-about);
}
.resizeHandle__01ae2 {
  width: 0px;
}
.container__0f2e8 { /*Serverr Activity Status*/
    background-color: rgba(var(--dark-layer1),0.05);
    outline: solid 1px rgba(255,255,255,0.1);
}
.scroller_ac6cb0 { /*Global search*/
  border-radius: 5px;
  margin-right: 0px;
}
.visual-refresh .form_f75fb0 {
  margin-top: 0;
}
.jumpToPresentBar__0f481 {
  padding-bottom: 0;
}
.lottieIcon__5eb9b.buttonIcon_e131a9 { /* VoiceChat Soundboard icon */
    --__lottieIconColor: white !important;
}
.container_e131a9 { /* VoiceChat border radius */
    border-radius: 8px;
}
.title_c38106, .leading_c38106, .trailing_c38106, .winButtons_c38106 { /* Titlebar */
  display: var(--title-bar-icon);
}
.visual-refresh .sidebarListRounded_c48ade { /* Remove sidebar backdrop-filter    WHO PUTS BACKDROP FILTER HERE?? */
  backdrop-filter: none;
  -webkit-backdrop-filter: none;
}
.panels_c48ade, .container__37e49 { /*User Profile*/ 
  background: var(--status-panel) !important;
}
.visual-refresh .stackedBars__74017 { /* Reply Bar */
  background: transparent;
}

/*meow*/
:root {
  --background-primary: transparent;
  --custom-channel-members-bg: transparent;
  --bg-base-primary: transparent;
  --home-background: transparent;
  --scrollbar-auto-track: transparent;
  --deprecated-store-bg: transparent;
}

body{
  background-color: var(--app-bg) !important;
}

/* Fix semicolon bug */
.app_a3002d {
  color: transparent;
}


'';

}
