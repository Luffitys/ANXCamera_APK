.class public Lcom/android/camera/statistic/MistatsWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final APP_ID:Ljava/lang/String; = "2882303761517373386"

.field private static final APP_KEY:Ljava/lang/String; = "5641737344386"

.field private static final CHANNEL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MistatsWrapper"

.field private static sDumpStatEvent:Z

.field private static sInitialized:Z

.field private static sIsAnonymous:Z

.field private static sIsCounterEventEnabled:Z

.field private static sIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ro.product.mod_device"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/statistic/MistatsWrapper;->CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "attr_trigger_mode"

    if-eqz v2, :cond_0

    const-string p2, "click"

    :cond_0
    invoke-virtual {v0, v3, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "attr_module_name"

    invoke-virtual {v0, v2, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "attr_feature_name"

    invoke-virtual {v0, v3, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "on"

    goto :goto_0

    :cond_1
    const-string p0, "off"

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "attr_value"

    invoke-virtual {v0, p1, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    const-string p1, "front"

    const-string p2, "back"

    if-eqz p0, :cond_4

    move-object p0, p1

    goto :goto_1

    :cond_4
    move-object p0, p2

    :goto_1
    const-string v2, "attr_sensor_id"

    invoke-virtual {v0, v2, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, p2

    :goto_2
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_common"

    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_6

    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void
.end method

.method public static customizeCameraSettingClick(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    const-string v1, "attr_trigger_mode"

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "attr_feature_name"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_customize_camera"

    invoke-static {v2, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_settings"

    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private static dumpEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mapValue:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/camera/statistic/MistatsWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static dumpEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "functionKey:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mapKey:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapValue:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/statistic/MistatsWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static featureTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "attr_trigger_mode"

    if-eqz v2, :cond_0

    const-string p2, "click"

    :cond_0
    invoke-virtual {v0, v3, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_0

    :cond_1
    const-string p1, "off"

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "attr_module_name"

    invoke-virtual {v0, v2, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "attr_value"

    invoke-virtual {v0, v3, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    const-string v5, "front"

    const-string v6, "back"

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    move-object v4, v6

    :goto_1
    const-string v7, "attr_sensor_id"

    invoke-virtual {v0, v7, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v6

    :goto_2
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_5

    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public static getStatsModuleKey(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcd

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, 0x0

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "M_film_time_freeze_"

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "M_film_paralleldream_"

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "M_film_"

    goto/16 :goto_0

    :pswitch_3
    const-string p0, "M_film_exposuredelay_"

    goto/16 :goto_0

    :pswitch_4
    const-string p0, "M_film_slow_shutter_"

    goto/16 :goto_0

    :pswitch_5
    const-string p0, "M_film_dolly_zoom_"

    goto/16 :goto_0

    :pswitch_6
    const-string p0, "M_superMoon_"

    goto/16 :goto_0

    :pswitch_7
    const-string p0, "M_ambilight_"

    goto/16 :goto_0

    :pswitch_8
    const-string p0, "M_Doc_"

    goto/16 :goto_0

    :pswitch_9
    const-string p0, "M_clone_"

    goto/16 :goto_0

    :pswitch_a
    const-string p0, "M_funArMimoji2_"

    goto/16 :goto_0

    :pswitch_b
    const-string p0, "M_miLive_"

    goto/16 :goto_0

    :pswitch_c
    const-string p0, "M_idCard_"

    goto :goto_0

    :pswitch_d
    const-string p0, "M_proVideo_"

    goto :goto_0

    :pswitch_e
    const-string p0, "M_liveVlog_"

    goto :goto_0

    :pswitch_f
    const-string p0, "M_standaloneMacro_"

    goto :goto_0

    :pswitch_10
    const-string p0, "M_funArMimoji_"

    goto :goto_0

    :pswitch_11
    const-string p0, "M_wideSelfie_"

    goto :goto_0

    :pswitch_12
    const-string p0, "M_48mPixel_"

    goto :goto_0

    :pswitch_13
    const-string p0, "M_liveDouyin_"

    goto :goto_0

    :pswitch_14
    const-string p0, "M_superNight_"

    goto :goto_0

    :pswitch_15
    const-string p0, "M_newSlowMotion_"

    goto :goto_0

    :pswitch_16
    const-string p0, "M_portrait_"

    goto :goto_0

    :pswitch_17
    const-string p0, "M_videoHfr_"

    goto :goto_0

    :pswitch_18
    const-string p0, "M_fastMotion_"

    goto :goto_0

    :pswitch_19
    const-string p0, "M_slowMotion_"

    goto :goto_0

    :pswitch_1a
    const-string p0, "M_manual_"

    goto :goto_0

    :pswitch_1b
    const-string p0, "M_panorama_"

    goto :goto_0

    :pswitch_1c
    const-string p0, "M_square_"

    goto :goto_0

    :pswitch_1d
    const-string p0, "M_capture_"

    goto :goto_0

    :pswitch_1e
    const-string p0, "M_recordVideo_"

    goto :goto_0

    :pswitch_1f
    const-string p0, "M_funTinyVideo_"

    goto :goto_0

    :pswitch_20
    const-string p0, "M_unspecified_"

    goto :goto_0

    :cond_0
    const-string p0, "M_ai_watermark_"

    goto :goto_0

    :cond_1
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000oo00()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "M_multi_camera_dual_video_"

    goto :goto_0

    :cond_2
    const-string p0, "M_dual_video_"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa5
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb6
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xcf
        :pswitch_4
        :pswitch_3
        :pswitch_e
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/android/camera/statistic/MistatsWrapper;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/camera/statistic/MistatsWrapper;->sInitialized:Z

    if-nez v1, :cond_4

    invoke-static {p0}, Lcom/android/camera/Util;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/statistic/MistatsWrapper;->sInitialized:Z

    const-string v2, "camera.debug.dump_stat_event"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f050021

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v4, :cond_3

    const v4, 0x7f050020

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/camera/statistic/MistatsWrapper;->sIsCounterEventEnabled:Z

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v2, Lcom/android/camera/statistic/MistatsWrapper;->sIsAnonymous:Z

    const-string v2, "2882303761517373386"

    const-string v4, "5641737344386"

    sget-object v5, Lcom/android/camera/statistic/MistatsWrapper;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v2, v4, v3, v5}, Lcom/xiaomi/stat/MiStat;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    sget-boolean p0, Lcom/android/camera/statistic/MistatsWrapper;->sIsAnonymous:Z

    if-nez p0, :cond_1

    move v3, v1

    :cond_1
    invoke-static {v3}, Lcom/xiaomi/stat/MiStat;->setExceptionCatcherEnabled(Z)V

    sget-boolean p0, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p0, :cond_2

    invoke-static {v1}, Lcom/xiaomi/stat/MiStat;->setDebugModeEnabled(Z)V

    :cond_2
    const p0, 0x15f90

    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->setUploadInterval(I)V

    invoke-static {v1, v1}, Lcom/xiaomi/stat/MiStat;->setUseSystemUploadingService(ZZ)Z

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/stat/MiStat;->setInternationalRegion(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isCounterEventDisabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsCounterEventEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "none"

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/statistic/MistatsWrapper;->keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static keyTriggerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "attr_trigger_mode"

    if-eqz v2, :cond_0

    const-string p3, "click"

    :cond_0
    invoke-virtual {v0, v3, p3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "on"

    goto :goto_0

    :cond_1
    const-string p2, "off"

    goto :goto_0

    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p3

    invoke-static {p3}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "attr_module_name"

    invoke-virtual {v0, v2, p3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    const-string v4, "front"

    const-string v5, "back"

    if-eqz v3, :cond_3

    move-object v3, v4

    goto :goto_1

    :cond_3
    move-object v3, v5

    :goto_1
    const-string v6, "attr_sensor_id"

    invoke-virtual {v0, v6, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v5

    :goto_2
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_5

    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public static mistatEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attr_module_name"

    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "front"

    goto :goto_0

    :cond_0
    const-string v4, "back"

    :goto_0
    const-string v5, "attr_sensor_id"

    invoke-virtual {v0, v5, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_2

    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public static mistatEventSimple(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static modeMistatsEvent(ILjava/util/Map;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->moduleMistatsEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static moduleCaptureEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "attr_mode"

    const-string v3, "photo"

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    const-string v5, "front"

    const-string v6, "back"

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    const-string v7, "attr_sensor_id"

    invoke-virtual {v0, v7, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_3

    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static moduleMistatsEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    const-string v3, "front"

    const-string v4, "back"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-string v5, "attr_sensor_id"

    invoke-virtual {v0, v5, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_3

    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static moduleUIClickEvent(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->getStatsModuleKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "on"

    goto :goto_0

    :cond_0
    const-string p2, "off"

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v2, "attr_trigger_mode"

    const-string v3, "click"

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "attr_feature_name"

    invoke-virtual {v0, v4, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "attr_value"

    invoke-virtual {v0, v5, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    const-string v7, "front"

    const-string v8, "back"

    if-eqz v6, :cond_2

    move-object v6, v7

    goto :goto_1

    :cond_2
    move-object v6, v8

    :goto_1
    const-string v9, "attr_sensor_id"

    invoke-virtual {v0, v9, v6}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v8

    :goto_2
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean p1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz p1, :cond_4

    invoke-static {p0, v1}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public static recordPageEnd(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    invoke-static {p0, v0}, Lcom/xiaomi/stat/MiStat;->trackPageEnd(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    :cond_0
    return-void
.end method

.method public static recordPageStart(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/stat/MiStat;->trackPageStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static recordPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/xiaomi/stat/MiStat;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_0

    :cond_1
    const-string p1, "off"

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6501cdc9

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "attr_video_time_lapse_frame_interval"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->timeLapseIntervalToName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object v0, Lcom/android/camera/statistic/MistatsWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    const-string v1, "attr_trigger_mode"

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "attr_feature_name"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attr_value"

    if-eqz p1, :cond_6

    invoke-virtual {v0, v2, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v3, "key_settings"

    invoke-static {v3, v0}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public static settingSchedualEvent(Ljava/util/Map;)V
    .locals 5

    sget-boolean v0, Lcom/android/camera/statistic/MistatsWrapper;->sIsEnabled:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v1}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    const-string v2, "attr_trigger_mode"

    const-string v3, "schedule"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "key_settings"

    invoke-static {p0, v1}, Lcom/xiaomi/stat/MiStat;->trackEvent(Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    sget-boolean v1, Lcom/android/camera/statistic/MistatsWrapper;->sDumpStatEvent:Z

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/android/camera/statistic/MistatsWrapper;->dumpEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
