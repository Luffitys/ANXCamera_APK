.class public Lcom/android/camera/data/data/config/SupportedConfigFactory;
.super Ljava/lang/Object;
.source "SupportedConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/SupportedConfigFactory$CloseElementTrigger;,
        Lcom/android/camera/data/data/config/SupportedConfigFactory$ClosableElement;,
        Lcom/android/camera/data/data/config/SupportedConfigFactory$ConfigItem;
    }
.end annotation


# static fields
.field public static final AI_DETECT:I = 0xf2

.field public static final AI_SCENE:I = 0xc9

.field public static final AUTO_ZOOM:I = 0xfd

.field public static final BACK:I = 0xd9

.field public static final BACKLIGHT:I = 0xf9

.field public static final BEAUTY:I = 0xef

.field public static final BOKEH:I = 0xc8

.field public static final CLOSE_BY_AI:Ljava/lang/String; = "e"

.field public static final CLOSE_BY_BOKEH:Ljava/lang/String; = "f"

.field public static final CLOSE_BY_BURST_SHOOT:Ljava/lang/String; = "d"

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

.field public static final DUAL_WATER_MARK:I = 0xf0

.field public static final EYE_LIGHT:I = 0xfe

.field public static final FAST:I = 0xe9

.field public static final FILTER:I = 0xc4

.field public static final FLASH:I = 0xc1

.field public static final FLASH_BLANK:I = 0xb1

.field public static final FLASH_DISABLE:I = 0xc11

.field public static final FOCUS_PEAK:I = 0xc7

.field public static final GENDER_AGE:I = 0xee

.field public static final GRADIENTER:I = 0xe5

.field public static final GROUP:I = 0xeb

.field public static final HAND_GESTURE:I = 0xfc

.field public static final HDR:I = 0xc2

.field public static final HHT:I = 0xe6

.field public static final INVALID:I = 0xb0

.field public static final LIGHTING:I = 0xcb

.field public static final LIVE_MUSIC_SELECT:I = 0xf5

.field public static final LIVE_SHOT:I = 0xce

.field public static final MACRO_MODE:I = 0xff

.field public static final MAGIC_FOCUS:I = 0xe7

.field public static final MAGIC_MIRROR:I = 0xec

.field public static final METER:I = 0xd6

.field public static final MIMOJI_EDIT:I = 0xfa

.field public static final MOON:I = 0xf6

.field public static final MORE:I = 0xc5

.field public static final MUTEX_MENU_CONFIGS:[I

.field public static final NEW_SLOW_MOTION:I = 0xcc

.field public static final NIGHT:I = 0xf7

.field public static final PORTRAIT:I = 0xc3

.field public static final RATIO:I = 0xd2

.field public static final RAW:I = 0xed

.field public static final SCENE:I = 0xea

.field public static final SETTING:I = 0xe1

.field public static final SHINE:I = 0xd4

.field public static final SILHOUETTE:I = 0xf8

.field public static final SLOW_QUALITY:I = 0xd5

.field public static final SUPER_EIS:I = 0xda

.field public static final SUPER_RESOLUTION:I = 0xf1

.field public static final TILT:I = 0xe4

.field public static final TIMER:I = 0xe2

.field public static final ULTRA_PIXEL:I = 0xd1

.field public static final ULTRA_PIXEL_PORTRAIT:I = 0xd7

.field public static final ULTRA_WIDE:I = 0xcd

.field public static final ULTRA_WIDE_BOKEH:I = 0xcf

.field public static final USER_DEFINE_WATER_MARK:I = 0xf4

.field public static final VIDEO_BOKEH:I = 0xf3

.field public static final VIDEO_QUALITY:I = 0xd6

.field public static final VV:I = 0xd8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    return-void

    :array_0
    .array-data 4
        0xe5
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
    .locals 1

    const/16 v0, 0xc3

    if-eq p0, v0, :cond_7

    const/16 v0, 0xc7

    if-eq p0, v0, :cond_6

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_5

    const/16 v0, 0xce

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd1

    if-eq p0, v0, :cond_3

    const/16 v0, 0xf1

    if-eq p0, v0, :cond_2

    const/16 v0, 0xfc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfd

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unknown config item"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

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

    :pswitch_5
    const-string p0, "pref_camera_hand_night_key"

    return-object p0

    :pswitch_6
    const-string p0, "pref_camera_gradienter_key"

    return-object p0

    :pswitch_7
    const-string p0, "pref_camera_tilt_shift_mode"

    return-object p0

    :cond_0
    const-string p0, "pref_camera_auto_zoom"

    return-object p0

    :cond_1
    const-string p0, "pref_hand_gesture"

    return-object p0

    :cond_2
    const-string p0, "pref_camera_super_resolution_key"

    return-object p0

    :cond_3
    const-string p0, "pref_ultra_pixel"

    return-object p0

    :cond_4
    const-string p0, "pref_live_shot_enabled"

    return-object p0

    :cond_5
    const-string p0, "pref_camera_ai_scene_mode_key"

    return-object p0

    :cond_6
    const-string p0, "pref_camera_peak_key"

    return-object p0

    :cond_7
    const-string p0, "pref_camera_portrait_mode_key"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xea
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getSupportedExtraConfigs(IILcom/android/camera/data/cloud/DataCloud$CloudFeature;Lcom/android/camera2/CameraCapabilities;Z)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 14

    move v0, p0

    move v1, p1

    new-instance v2, Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-direct {v2}, Lcom/android/camera/data/data/config/SupportedConfigs;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v5

    const/16 v6, 0xa1

    const/16 v7, 0xe1

    if-eq v0, v6, :cond_19

    const/16 v6, 0xa2

    const/16 v8, 0xff

    const/4 v9, 0x1

    if-eq v0, v6, :cond_15

    const/16 v6, 0xa7

    const/16 v10, 0xd2

    const/16 v11, 0xe2

    if-eq v0, v6, :cond_12

    const/16 v6, 0xa9

    if-eq v0, v6, :cond_15

    const/16 v6, 0xb1

    if-eq v0, v6, :cond_11

    const/16 v6, 0xfc

    const/16 v12, 0xee

    const/16 v13, 0xec

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_0
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v3, 0xd1

    const/16 v7, 0xeb

    const/16 v10, 0xa5

    if-eqz v1, :cond_7

    if-eq v1, v9, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eqz p4, :cond_2

    invoke-static {}, Lcom/mi/config/b;->Ni()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq v0, v10, :cond_2

    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_2
    if-eq v0, v10, :cond_3

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1a

    :cond_3
    invoke-static {}, Lcom/mi/config/b;->Xi()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mi/config/b;->uj()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_4
    invoke-static {}, Lcom/mi/config/b;->kj()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, v13}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_6
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/mi/config/b;->xj()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0xe4

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_8
    invoke-static {}, Lcom/mi/config/b;->Mi()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xe5

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_9
    invoke-static {}, Lcom/mi/config/b;->Ri()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xea

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_a
    if-eq v0, v10, :cond_b

    if-eqz p4, :cond_b

    invoke-static {}, Lcom/mi/config/b;->Ni()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_b
    if-eqz p4, :cond_c

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xf2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_c
    if-eqz p4, :cond_d

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_d
    if-eqz p4, :cond_1a

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v5}, Lcom/mi/config/a;->lb()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v0, 0xd5

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v5}, Lcom/mi/config/a;->Ub()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {v8}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(Lcom/android/camera/data/data/config/TopConfigItem;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_e
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-ne v1, v9, :cond_1a

    invoke-virtual {v5}, Lcom/mi/config/a;->rc()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/mi/config/b;->Xi()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/mi/config/b;->uj()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2, v12}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_f
    invoke-static {}, Lcom/mi/config/b;->kj()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v2, v13}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_10
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    :cond_11
    :pswitch_3
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->supportRatio()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->va()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportRaw()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xed

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_14
    invoke-virtual {v2, v11}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    :cond_15
    const/16 v0, 0xd6

    if-eqz v1, :cond_17

    if-eq v1, v9, :cond_16

    goto :goto_0

    :cond_16
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    :cond_17
    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v0, 0xe9

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-eqz p4, :cond_18

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v5}, Lcom/mi/config/a;->lb()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_18
    if-eqz p4, :cond_1a

    invoke-virtual {v5}, Lcom/mi/config/a;->Cb()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v5}, Lcom/mi/config/a;->Ta()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0xfd

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    :cond_19
    :pswitch_4
    if-nez v1, :cond_1a

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_1a
    :goto_0
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/android/camera/data/cloud/DataCloud$CloudFeature;->filterFeature(Lcom/android/camera/data/data/config/SupportedConfigs;)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static final getSupportedTopConfigs(IIZ)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v4

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitSupport(II)V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v3, v0, v1, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {v2, v0, v1, v5}, Lcom/android/camera/data/data/config/DataItemConfig;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportFlash()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0xc1

    invoke-static {v7}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v7, 0xd7

    const/16 v8, 0xce

    const/16 v9, 0xc8

    const/16 v10, 0xff

    const/16 v11, 0xf3

    const/16 v12, 0xc9

    const/16 v13, 0xc2

    const/16 v14, 0xe1

    const/16 v15, 0x11

    const/16 v16, 0xc5

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1
    const/16 v0, 0xd9

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_2
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lcom/mi/config/a;->jd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v0, 0xf5

    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->supportSlowMotionSwitch()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xcc

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v4}, Lcom/mi/config/a;->isSupportUltraWide()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {v4}, Lcom/mi/config/a;->lc()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xcf

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v12, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_8
    const/16 v1, 0xd6

    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    invoke-static {}, Lcom/mi/config/b;->qj()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc7

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xd1

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_9
    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v12}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v4}, Lcom/mi/config/a;->nb()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v10}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v4}, Lcom/mi/config/a;->Sb()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p2, :cond_f

    invoke-static {v8}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isSupportUltraPixelPortrait()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v7}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_b
    const/16 v5, 0xa2

    if-nez v1, :cond_1a

    invoke-virtual {v4}, Lcom/mi/config/a;->hc()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz p2, :cond_12

    const/16 v1, 0xda

    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v4}, Lcom/mi/config/a;->Ua()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v4}, Lcom/mi/config/a;->Cb()Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p2, :cond_13

    const/16 v1, 0xfd

    invoke-static {v1, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    if-ne v0, v5, :cond_15

    if-eqz p2, :cond_14

    invoke-virtual {v4}, Lcom/mi/config/a;->Tb()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xd8

    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v4}, Lcom/mi/config/a;->nb()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {v10, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    if-nez p2, :cond_17

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_17
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v13}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1a
    if-eqz p2, :cond_1b

    if-ne v0, v5, :cond_1b

    invoke-virtual {v4}, Lcom/mi/config/a;->jd()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    if-nez p2, :cond_1d

    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1d
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_c
    if-eqz p2, :cond_1e

    if-eqz v1, :cond_1e

    invoke-virtual {v4}, Lcom/mi/config/a;->jd()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {v11}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0, v15}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(II)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    invoke-static {v14}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_20
    :goto_0
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportAi()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {v12}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    invoke-virtual {v4}, Lcom/mi/config/a;->Sb()Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz p2, :cond_23

    invoke-static {v8}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportMacroMode()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v4}, Lcom/mi/config/a;->nb()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {v10}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigItem()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportUltraPixelPortrait()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isSupportUltraPixelPortrait()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {v7}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->createConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v6}, Lcom/android/camera/data/data/config/TopViewPositionArray;->fillNotUseViewPosition(Ljava/util/List;)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_1
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
