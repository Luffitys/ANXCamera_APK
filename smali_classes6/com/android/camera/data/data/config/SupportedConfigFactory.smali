.class public Lcom/android/camera/data/data/config/SupportedConfigFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AI_108:I = 0xab

.field public static final AI_AUDIO:I = 0xa8

.field public static final AI_DETECT:I = 0xf2

.field public static final AI_ENHANCED_VIDEO:I = 0xaf

.field public static final AI_SCENE:I = 0xc9

.field public static final AI_WATERMARK:I = 0xdf

.field public static final AUTO_ZOOM:I = 0xfd

.field public static final BACK:I = 0xd9

.field public static final BACKLIGHT:I = 0xf9

.field public static final BEAUTY:I = 0xef

.field public static final BOKEH:I = 0xc8

.field public static final CINEMATIC_ASPECT_RATIO:I = 0xfb

.field public static final CLOSE_BY_AI:Ljava/lang/String; = "e"

.field public static final CLOSE_BY_BOKEH:Ljava/lang/String; = "f"

.field public static final CLOSE_BY_BURST_SHOOT:Ljava/lang/String; = "d"

.field public static final CLOSE_BY_DOCUMENT_MODE:Ljava/lang/String; = "p"

.field public static final CLOSE_BY_FILTER:Ljava/lang/String; = "k"

.field public static final CLOSE_BY_GROUP:Ljava/lang/String; = "b"

.field public static final CLOSE_BY_HDR:Ljava/lang/String; = "g"

.field public static final CLOSE_BY_HHT:Ljava/lang/String; = "a"

.field public static final CLOSE_BY_MACRO_MODE:Ljava/lang/String; = "m"

.field public static final CLOSE_BY_MANUAL_MODE:Ljava/lang/String; = "mm"

.field public static final CLOSE_BY_RATIO:Ljava/lang/String; = "l"

.field public static final CLOSE_BY_RAW:Ljava/lang/String; = "n"

.field public static final CLOSE_BY_SUPER_RESOLUTION:Ljava/lang/String; = "c"

.field public static final CLOSE_BY_ULTRA_PIXEL:Ljava/lang/String; = "j"

.field public static final CLOSE_BY_ULTRA_PIXEL_PORTRAIT:Ljava/lang/String; = "o"

.field public static final CLOSE_BY_ULTRA_WIDE:Ljava/lang/String; = "i"

.field public static final CLOSE_BY_VIDEO:Ljava/lang/String; = "h"

.field public static final COLOR_ENHANCE:I = 0xe3

.field public static final DOCUMENT:I = 0xdd

.field public static final DOLLY_ZOOM_USE_GUIDE:I = 0xb3

.field public static final DUAL_VIDEO:I = 0xde

.field public static final DUAL_WATER_MARK:I = 0xf0

.field public static final EXPOSURE_FEEDBACK:I = 0x102

.field public static final EYE_LIGHT:I = 0xfe

.field public static final FAST:I = 0xe9

.field public static final FILTER:I = 0xc4

.field public static final FLASH:I = 0xc1

.field public static final FLASH_BLANK:I = 0xb1

.field public static final FOCUS_PEAK:I = 0xc7

.field public static final GENDER_AGE:I = 0xee

.field public static final GRADIENTER:I = 0xe5

.field public static final GROUP:I = 0xeb

.field public static final HAND_GESTURE:I = 0xfc

.field public static final HDR:I = 0xc2

.field public static final HHT:I = 0xe6

.field public static final ID_CARD:I = 0xa6

.field public static final INVALID:I = 0xb0

.field public static final LIGHTING:I = 0xcb

.field public static final LIVE_MUSIC_SELECT:I = 0xf5

.field public static final LIVE_SHOT:I = 0xce

.field public static final LIVE_VIDEO_QUALITY:I = 0xbb

.field public static final MACRO_MODE:I = 0xff

.field public static final MAGIC_FOCUS:I = 0xe7

.field public static final MAGIC_MIRROR:I = 0xec

.field public static final MASTER_FILTER:I = 0x107

.field public static final METER:I = 0xd6

.field public static final MIMOJI_EDIT:I = 0xa1

.field public static final MIMOJI_GIF:I = 0xa2

.field public static final MOON:I = 0xf6

.field public static final MORE:I = 0xc5

.field public static final MUTEX_MENU_CONFIGS:[I

.field public static final MUTEX_VIDEO_FEATURES:[I

.field public static final NEAR_RANGE_MODE:I = 0xa7

.field public static final NEW_SLOW_MOTION:I = 0xcc

.field public static final NIGHT:I = 0xf7

.field public static final PANO_SWITCH_ORIENTATION:I = 0xa9

.field public static final PORTRAIT:I = 0xc3

.field public static final RATIO:I = 0xd2

.field public static final RAW:I = 0xed

.field public static final REFERENCE_LINE:I = 0xdb

.field public static final RGB_HISTOGRAM:I = 0x105

.field public static final SCENE:I = 0xea

.field public static final SETTING:I = 0xe1

.field public static final SHINE:I = 0xd4

.field public static final SILHOUETTE:I = 0xf8

.field public static final SLOW_QUALITY:I = 0xd5

.field public static final SPEECH_SHUTTER:I = 0x106

.field public static final SUBTITLE:I = 0xdc

.field public static final SUPER_EIS:I = 0xda

.field public static final SUPER_EIS_PRO:I = 0xa5

.field public static final SUPER_RESOLUTION:I = 0xf1

.field public static final TILT:I = 0xe4

.field public static final TIMER:I = 0xe2

.field public static final TIMER_BURST:I = 0xaa

.field public static final ULTRA_PIXEL:I = 0xd1

.field public static final ULTRA_PIXEL_PORTRAIT:I = 0xd7

.field public static final ULTRA_WIDE:I = 0xcd

.field public static final ULTRA_WIDE_BOKEH:I = 0xcf

.field public static final USE_GUIDE:I = 0xa4

.field public static final VIDEO_8K:I = 0x100

.field public static final VIDEO_BOKEH:I = 0xf3

.field public static final VIDEO_BOKEH_WITH_COLOR_RETENTION:I = 0xf4

.field public static final VIDEO_LOG:I = 0x104

.field public static final VIDEO_QUALITY:I = 0xd0

.field public static final VIDEO_SUB_FPS:I = 0xae

.field public static final VIDEO_SUB_QUALITY:I = 0xad

.field public static final VV:I = 0xd8

.field public static final WORKSPACE:I = 0xac


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_VIDEO_FEATURES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xec
        0xeb
        0xe4
        0xe6
        0xf1
        0xea
        0xc3
        0xee
        0xcb
        0xce
        0xd1
    .end array-data

    :array_1
    .array-data 4
        0xe9
        0xd4
        0xda
        0xdc
        0xfd
        0xff
        0xd8
        0xa5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;
    .locals 1

    new-instance v0, Lcom/android/camera/data/data/config/TopConfigItem;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/TopConfigItem;-><init>(I)V

    return-object v0
.end method

.method private static createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;
    .locals 1

    new-instance v0, Lcom/android/camera/data/data/config/TopConfigItem;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/data/data/config/TopConfigItem;-><init>(II)V

    return-object v0
.end method

.method public static getConfigKey(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xe3

    if-eq p0, v0, :cond_3

    const/16 v0, 0xe4

    if-eq p0, v0, :cond_2

    const/16 v0, 0xfc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfd

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown config item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "pref_camera_show_gender_age_key"

    return-object p0

    :pswitch_1
    const-string p0, "pref_camera_raw_key"

    return-object p0

    :pswitch_2
    const-string p0, "pref_camera_magic_mirror_key"

    return-object p0

    :pswitch_3
    const-string p0, "pref_camera_groupshot_mode_key"

    return-object p0

    :pswitch_4
    const-string p0, "pref_camera_scenemode_setting_key"

    return-object p0

    :sswitch_0
    const-string p0, "pref_speech_shutter"

    return-object p0

    :sswitch_1
    const-string p0, "pref_camera_exposure_feedback"

    return-object p0

    :sswitch_2
    const-string p0, "pref_camera_super_resolution_key"

    return-object p0

    :sswitch_3
    const-string p0, "pref_camera_hand_night_key"

    return-object p0

    :sswitch_4
    const-string p0, "pref_watermark_key"

    return-object p0

    :sswitch_5
    const-string p0, "pref_document_mode_key"

    return-object p0

    :sswitch_6
    const-string p0, "pref_ultra_pixel"

    return-object p0

    :sswitch_7
    const-string p0, "pref_live_shot_enabled"

    return-object p0

    :sswitch_8
    const-string p0, "pref_camera_ai_scene_mode_key"

    return-object p0

    :sswitch_9
    const-string p0, "pref_camera_peak_key"

    return-object p0

    :sswitch_a
    const-string p0, "pref_camera_portrait_mode_key"

    return-object p0

    :cond_0
    const-string p0, "pref_camera_auto_zoom"

    return-object p0

    :cond_1
    const-string p0, "pref_hand_gesture"

    return-object p0

    :cond_2
    const-string p0, "pref_camera_tilt_shift_mode"

    return-object p0

    :cond_3
    const-string p0, "pref_color_enhance"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_a
        0xc7 -> :sswitch_9
        0xc9 -> :sswitch_8
        0xce -> :sswitch_7
        0xd1 -> :sswitch_6
        0xdd -> :sswitch_5
        0xdf -> :sswitch_4
        0xe6 -> :sswitch_3
        0xf1 -> :sswitch_2
        0x102 -> :sswitch_1
        0x106 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xea
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getSupportedExtraConfigs(IILcom/android/camera2/CameraCapabilities;Z)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-direct {v2}, Lcom/android/camera/data/data/config/SupportedConfigs;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v5

    const/16 v6, 0xa1

    const/16 v8, 0xdb

    const/16 v9, 0xe1

    if-eq v0, v6, :cond_41

    const/16 v6, 0xa2

    const/16 v13, 0xff

    const/16 v14, 0xfb

    const/16 v15, 0xe5

    if-eq v0, v6, :cond_37

    const/16 v6, 0xa6

    if-eq v0, v6, :cond_42

    const/16 v6, 0xa7

    const/16 v10, 0xe2

    const/16 v11, 0xd2

    const/16 v12, 0x106

    if-eq v0, v6, :cond_31

    const/16 v6, 0xa9

    if-eq v0, v6, :cond_2f

    const/16 v6, 0xb4

    if-eq v0, v6, :cond_2a

    const/16 v6, 0xd6

    if-eq v0, v6, :cond_27

    const/16 v6, 0xb7

    if-eq v0, v6, :cond_26

    const/16 v6, 0xb8

    if-eq v0, v6, :cond_23

    const/16 v6, 0xcc

    if-eq v0, v6, :cond_42

    const/16 v6, 0xcd

    const/16 v7, 0xfc

    if-eq v0, v6, :cond_1f

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    if-nez p3, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_0
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_2
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00000oO()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(Lcom/android/camera/data/data/config/TopConfigItem;)V

    :cond_3
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_4
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_5
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_6

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_6
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSuperMacroMode()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00O00Oo()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xce

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    :cond_7
    invoke-virtual {v4, v1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode(II)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v13}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_8
    :goto_0
    if-nez v1, :cond_a

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0000Ooo()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xe4

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_9
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o00o0O()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xea

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_a
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v1, :cond_b

    const/16 v0, 0xf2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_b
    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera2/CameraCapabilities;->isSupportedColorEnhance()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    const/16 v0, 0xe3

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_c
    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00oo0Oo()Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_44

    :goto_1
    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_9

    :pswitch_1
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_d
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_e
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_f
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_1

    :pswitch_4
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_10
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_11

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_11
    if-eqz p3, :cond_44

    invoke-virtual {v4, v1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode(II)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v2, v13}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_9

    :pswitch_5
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_12
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_13
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_14
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_15
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00000oO()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(Lcom/android/camera/data/data/config/TopConfigItem;)V

    :cond_16
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_17
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_18

    const/16 v0, 0xcc

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_18
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_19

    const/16 v0, 0xd5

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_19
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_1a

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_1a
    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00O0O0O()Z

    move-result v0

    if-eqz v0, :cond_44

    if-nez v1, :cond_44

    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(Lcom/android/camera/data/data/config/TopConfigItem;)V

    goto/16 :goto_9

    :pswitch_9
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_1b
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00000oO()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(Lcom/android/camera/data/data/config/TopConfigItem;)V

    :cond_1c
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_1d
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_1e
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_1

    :cond_1f
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_20

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_20
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_21
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_22
    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0000Ooo()Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v0, 0xe4

    goto/16 :goto_6

    :cond_23
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_24
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiPhoto()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_25
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_1

    :cond_26
    const/16 v0, 0xbb

    goto/16 :goto_7

    :cond_27
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_28
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00000oO()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(Lcom/android/camera/data/data/config/TopConfigItem;)V

    :cond_29
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_1

    :cond_2a
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isTwoComponent()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0xad

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v0, 0xae

    goto :goto_2

    :cond_2b
    const/16 v0, 0xd0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoLogFormat()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x104

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_2d
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_2e
    const/16 v0, 0xc7

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v0, 0x102

    goto/16 :goto_6

    :cond_2f
    const/16 v0, 0xd0

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_30
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_44

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_1

    :cond_31
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_32
    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOO0()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera2/CameraCapabilities;->isSupportRaw()Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0xed

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_33
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_34
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_35
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o00000()Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0xc7

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_36
    const/16 v0, 0x102

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00oo0Oo()Z

    move-result v0

    if-eqz v0, :cond_44

    :goto_3
    const/16 v0, 0xaa

    goto/16 :goto_6

    :cond_37
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isTwoComponent()Z

    move-result v3

    if-eqz v3, :cond_38

    const/16 v3, 0xad

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v3, 0xae

    goto :goto_4

    :cond_38
    const/16 v3, 0xd0

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-eqz v1, :cond_3b

    const/4 v3, 0x1

    if-eq v1, v3, :cond_39

    goto :goto_5

    :cond_39
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_3a
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_5

    :cond_3b
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera2/CameraCapabilities;->isSupportedVideoMiMovie()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_3c
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0OoOo0()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2, v15}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_3d
    invoke-virtual {v4, v1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {v2, v13}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_3e
    if-eqz p3, :cond_3f

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000OoOO()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/16 v0, 0xfd

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_3f
    if-eqz p3, :cond_40

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera2/CameraCapabilities;->supportAiEnhancedVideo()Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 v0, 0xaf

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_40
    :goto_5
    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OO0O0()Z

    move-result v0

    if-eqz v0, :cond_44

    if-eqz p3, :cond_44

    const/16 v0, 0xdc

    :goto_6
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_9

    :cond_41
    const/16 v0, 0xd0

    :goto_7
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_42
    :pswitch_a
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_43
    :goto_8
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_44
    :goto_9
    return-object v2

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xba
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd1
        :pswitch_a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getSupportedTopConfigs(IIZ)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 19

    move/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportFlash()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0xc1

    invoke-static {v7}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v7, 0xa1

    const/16 v8, 0xf3

    const/16 v9, 0x11

    const/16 v10, 0xc5

    if-eq v0, v7, :cond_2f

    const/16 v11, 0xa2

    const/16 v13, 0xc2

    if-eq v0, v11, :cond_20

    const/16 v14, 0xa9

    const/16 v15, 0xa6

    if-eq v0, v15, :cond_1f

    const/16 v12, 0xa7

    const/16 v17, 0xd6

    if-eq v0, v12, :cond_1d

    if-eq v0, v14, :cond_1a

    const/16 v12, 0xfe

    const/16 v14, 0xb0

    if-eq v0, v12, :cond_18

    const/16 v12, 0xb3

    const/16 v18, 0xd9

    if-eq v0, v12, :cond_17

    const/16 v7, 0xb4

    if-eq v0, v7, :cond_13

    const/16 v7, 0xcc

    const/16 v16, 0xa4

    if-eq v0, v7, :cond_11

    const/16 v7, 0xcd

    const/16 v14, 0xc9

    if-eq v0, v7, :cond_e

    const/16 v7, 0xf5

    packed-switch v0, :pswitch_data_0

    const/16 v8, 0xfb

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    if-nez p2, :cond_2

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_0
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    :goto_1
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSuperMacroMode()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xff

    :goto_2
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00O00Oo()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xce

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportedSuperPortrait()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd7

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc8

    goto/16 :goto_1

    :pswitch_0
    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000oo()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xac

    :goto_4
    invoke-static {v0, v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto :goto_9

    :pswitch_1
    invoke-static {v8, v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto :goto_7

    :pswitch_2
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto :goto_5

    :pswitch_3
    invoke-static {v12}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    :goto_5
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto :goto_7

    :pswitch_4
    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_6
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    goto :goto_4

    :pswitch_5
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00O000o()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto :goto_9

    :pswitch_6
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    :goto_7
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_7
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0Oo0()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v11, v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto :goto_9

    :cond_9
    :goto_8
    :pswitch_8
    invoke-static {v7, v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    :goto_9
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :pswitch_9
    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_a

    :pswitch_a
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00Ooooo()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xab

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_0

    :pswitch_b
    if-eqz p2, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0O0o()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v8}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    :goto_a
    :pswitch_c
    invoke-static {v10}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    :goto_b
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :pswitch_d
    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OO()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OOO0()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xcf

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v14, v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_0

    :cond_11
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000oo00()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawSelectWindow()Z

    move-result v1

    if-eqz v0, :cond_b

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualVideoRecording()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto/16 :goto_9

    :cond_12
    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto :goto_b

    :cond_13
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000OOoO()Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v1, 0xa8

    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o00000()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    :cond_15
    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoMasterFilter()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x107

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_0

    :cond_17
    :goto_c
    :pswitch_e
    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto/16 :goto_b

    :cond_18
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/android/camera/data/data/config/TopConfigItem;

    invoke-direct {v0, v14}, Lcom/android/camera/data/data/config/TopConfigItem;-><init>(I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_19
    const/4 v0, 0x0

    new-instance v1, Lcom/android/camera/data/data/config/TopConfigItem;

    invoke-direct {v1, v14}, Lcom/android/camera/data/data/config/TopConfigItem;-><init>(I)V

    invoke-interface {v6, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_d
    invoke-static {v6}, Lcom/android/camera/data/data/config/TopViewPositionArray;->fillNotUseViewPosition(Ljava/util/List;)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000oo0o()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez v1, :cond_1b

    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoMasterFilter()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x107

    invoke-static {v0, v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_6

    :cond_1d
    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1e

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0xd1

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_0

    :cond_1f
    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00O0o00()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xb1

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto/16 :goto_9

    :cond_20
    const/16 v7, 0xe1

    if-nez v1, :cond_29

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000OOoO()Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    if-eqz p2, :cond_22

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00Oo0o0()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz p2, :cond_24

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OO0O()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OO0OO()Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0xa5

    goto :goto_e

    :cond_23
    const/16 v0, 0xda

    :goto_e
    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    const/16 v0, 0xd4

    if-nez p2, :cond_26

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoMasterFilter()Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x107

    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {v0, v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_26
    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00Oo0o0()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoMasterFilter()Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x107

    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_4

    :cond_29
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoHdr()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoMasterFilter()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v1, 0x107

    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v1

    invoke-static {v1, v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    if-eqz p2, :cond_2d

    if-ne v0, v11, :cond_2d

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0O0o()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {v8}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    if-nez p2, :cond_b

    :cond_2e
    :goto_f
    invoke-static {v7}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    goto/16 :goto_b

    :cond_2f
    if-eqz p2, :cond_30

    if-eqz v1, :cond_30

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0O0o()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {v8}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_6

    :goto_10
    invoke-static {v6}, Lcom/android/camera/data/data/config/TopViewPositionArray;->fillNotUseViewPosition(Ljava/util/List;)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb6
        :pswitch_e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcf
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_c
    .end packed-switch
.end method

.method public static isMutexConfig(I)Z
    .locals 5

    sget-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
