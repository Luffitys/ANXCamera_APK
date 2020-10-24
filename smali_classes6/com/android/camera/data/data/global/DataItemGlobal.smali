.class public Lcom/android/camera/data/data/global/DataItemGlobal;
.super Lcom/android/camera/data/data/DataItemBase;
.source ""


# static fields
.field public static final BACK_DISPLAY_MODE:I = 0x2

.field public static final CTA_CAN_CONNECT_NETWORK_BY_IMPUNITY:Ljava/lang/String; = "can_connect_network"

.field public static final DATA_CLONE_MODEL_VERSION:Ljava/lang/String; = "pref_clone_model_version"

.field public static final DATA_COMMON_AI_SCENE_HINT:Ljava/lang/String; = "pref_camera_first_ai_scene_use_hint_shown_key"

.field public static final DATA_COMMON_CAMCORDER_TIP_8K_MAX_VIDEO_DURATION_SHOWN:Ljava/lang/String; = "pref_camcorder_tip_8k_max_video_duration_shown"

.field public static final DATA_COMMON_CURRENT_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field public static final DATA_COMMON_CURRENT_MODE:Ljava/lang/String; = "pref_camera_mode_key_intent_"

.field public static final DATA_COMMON_CUSTOM_WATERMARK_VERSION:Ljava/lang/String; = "pref_custom_watermark_version"

.field public static final DATA_COMMON_DEVICE_WATERMARK:Ljava/lang/String; = "pref_dualcamera_watermark_key"

.field public static final DATA_COMMON_DOCUMENT_MODE_USE_HINT_SHOWN:Ljava/lang/String; = "pref_document_use_hint_shown"

.field public static final DATA_COMMON_DUALCAMERA_USERDEFINE_WATERMARK:Ljava/lang/String; = "user_define_watermark_key"

.field public static final DATA_COMMON_FIRST_USE_HINT:Ljava/lang/String; = "pref_camera_first_use_hint_shown_key"

.field public static final DATA_COMMON_FOCUS_SHOOT:Ljava/lang/String; = "pref_camera_focus_shoot_key"

.field public static final DATA_COMMON_FRONT_CAM_ROTATE_HINT:Ljava/lang/String; = "pref_front_camera_first_use_hint_shown_key"

.field public static final DATA_COMMON_ID_CARD_MODE_HINT:Ljava/lang/String; = "pref_camera_first_id_card_mode_use_hint_shown_key"

.field public static final DATA_COMMON_LPL_SELECTOR_USE_HINT_SHOWN:Ljava/lang/String; = "pref_lpl_selector_use_hint_shown"

.field public static final DATA_COMMON_MACRO_MODE_HINT:Ljava/lang/String; = "pref_camera_first_macro_mode_use_hint_shown_key"

.field private static final DATA_COMMON_OPEN_TIME:Ljava/lang/String; = "pref_camera_open_time"

.field public static final DATA_COMMON_PORTRAIT_HINT:Ljava/lang/String; = "pref_camera_first_portrait_use_hint_shown_key"

.field public static final DATA_COMMON_SORT_MODES:Ljava/lang/String; = "pref_camera_sort_modes_key"

.field public static final DATA_COMMON_TIKTOK_MORE_BUTTON_SHOW_APP:Ljava/lang/String; = "pref_camera_tiktok_more_show_app_key"

.field public static final DATA_COMMON_TIKTOK_MORE_BUTTON_SHOW_MARKET:Ljava/lang/String; = "pref_camera_tiktok_more_show_market_key"

.field public static final DATA_COMMON_TIME_WATER_MARK:Ljava/lang/String; = "pref_time_watermark_key"

.field public static final DATA_COMMON_ULTRA_TELE_HINT:Ljava/lang/String; = "pref_camera_first_ultra_tele_use_hint_shown_key"

.field public static final DATA_COMMON_ULTRA_WIDE_HINT:Ljava/lang/String; = "pref_camera_first_ultra_wide_use_hint_shown_key"

.field public static final DATA_COMMON_ULTRA_WIDE_SAT_HINT:Ljava/lang/String; = "pref_camera_first_ultra_wide_sat_use_hint_shown_key"

.field public static final DATA_COMMON_USER_EDIT_MODES:Ljava/lang/String; = "pref_user_edit_modes"

.field public static final DATA_COMMON_VV_HINT:Ljava/lang/String; = "pref_camera_first_vv_hint_shown_key"

.field private static DEFAULT_SORT_MODES:[I = null

.field public static final FRONT_DISPLAY_MODE:I = 0x1

.field public static final INTENT_TYPE_IDPHOTO:I = 0x5

.field public static final INTENT_TYPE_IMAGE:I = 0x1

.field public static final INTENT_TYPE_NORMAL:I = 0x0

.field public static final INTENT_TYPE_SCAN_QR:I = 0x3

.field public static final INTENT_TYPE_UNSPECIFIED:I = -0x1

.field public static final INTENT_TYPE_VIDEO:I = 0x2

.field public static final INTENT_TYPE_VOICE_CONTROL:I = 0x4

.field public static final IS_FIRST_SHOW_VIDEOTAG:Ljava/lang/String; = "first_show_videotag"

.field public static final IS_FIRST_USE_CLONE_PHOTO:Ljava/lang/String; = "first_show_clone_photo"

.field public static final IS_FIRST_USE_CLONE_VIDEO:Ljava/lang/String; = "first_show_clone_video"

.field public static final KEY:Ljava/lang/String; = "camera_settings_global"

.field private static final TAG:Ljava/lang/String; = "DataItemGlobal"

.field private static final TIME_OUT:I = 0x7530

.field public static sUseHints:Ljava/util/List;


# instance fields
.field private hasModesSortChanged:Z

.field private mAllSortModes:[I

.field private mDataBackUp:Lcom/android/camera/data/backup/DataBackUp;

.field private mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

.field private mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mIntentType:I

.field private mIntentVideoQuality:I

.field private mIsForceMainBackCamera:Z

.field private mIsTimeOut:Ljava/lang/Boolean;

.field private mLastCameraId:I

.field private mMimojiStandAlone:Z

.field private mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mRetriedIfCameraError:Z

.field private mStartFromKeyguard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_camera_first_ai_scene_use_hint_shown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_camera_first_ultra_wide_use_hint_shown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_camera_first_portrait_use_hint_shown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_front_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_document_use_hint_shown"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_lpl_selector_use_hint_shown"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/data/data/global/DataItemGlobal;->DEFAULT_SORT_MODES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa7
        0xa2
        0xa3
        0xab
        0xfe
        0xad
        0xaf
        0xb7
        0xae
        0xa1
        0xa6
        0xb0
        0xba
        0xd1
        0xac
        0xa9
        0xcc
        0xcd
        0xbb
        0xbc
        0xb1
        0xb8
        0xb9
    .end array-data
.end method

.method public constructor <init>(LOooO0O0/OooO0o0/OooO00o/OooO0Oo;Lcom/android/camera/data/data/runing/DataItemRunning;Lcom/android/camera/data/backup/DataBackUp;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->hasModesSortChanged:Z

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentVideoQuality:I

    iput-object p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    iput-object p2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    iput-object p3, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataBackUp:Lcom/android/camera/data/backup/DataBackUp;

    invoke-virtual {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->oo0oOO0()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mMimojiStandAlone:Z

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    iput p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    new-instance p1, Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/global/ComponentModuleList;-><init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    iput-object p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getSortModes()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mAllSortModes:[I

    const-string p1, "pref_open_more_mode_type"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->applyMoreModeStyle()V

    :cond_0
    return-void
.end method

.method static synthetic OooO00o(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic OooO0O0(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private determineTimeOut()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->retainCameraMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    const/16 v0, 0xfe

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isActualTimeOut()Z

    move-result p0

    return p0
.end method

.method private getConfigCommonModes()[I
    .locals 9

    iget-boolean v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mMimojiStandAlone:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    iget v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result p0

    aput p0, v0, v1

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOoo0()[I

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0xfe

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/camera/data/data/global/DataItemGlobal;->DEFAULT_SORT_MODES:[I

    array-length v3, p0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_5

    aget v5, p0, v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getTransferredMode(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    if-nez v6, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [I

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-object p0

    :cond_7
    sget-object p0, Lcom/android/camera/data/data/global/DataItemGlobal;->DEFAULT_SORT_MODES:[I

    return-object p0
.end method

.method private getCurrentCameraId(I)I
    .locals 3

    const/16 v0, 0xa6

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa9

    const-string v2, "pref_camera_id_key"

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_6

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_6

    const/16 v0, 0xd6

    if-eq p1, v0, :cond_6

    const/16 v0, 0xaf

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0OOO()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0OOo()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OOOoO()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OOoo()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00O0000()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xba
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd1
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getCurrentMode(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_camera_mode_key_intent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getCurrentModeForFrontCamera(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result p1

    const/16 v0, 0xa3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OOoo()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xa2

    goto :goto_1

    :goto_0
    :pswitch_3
    move p1, v0

    :cond_0
    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getDefaultCameraId(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isActualTimeOut()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pref_camera_open_time"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public applyMoreModeStyle()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getSortModes()[I

    move-result-object v0

    const-string v1, "pref_user_edit_modes"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_open_more_mode_type"

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    :goto_0
    array-length v4, v0

    const/16 v5, 0xfe

    if-ge v2, v4, :cond_2

    aget v4, v0, v2

    if-ne v4, v5, :cond_1

    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    const-string v4, "DataItemGlobal"

    if-ge v3, v2, :cond_3

    const-string p0, "filterByStyle find more index fail."

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    array-length v1, v0

    sub-int/2addr v1, v2

    if-lt v3, v1, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v3, 0x1

    aget v2, v0, v1

    aput v2, v0, v3

    aput v5, v0, v1

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    add-int/lit8 v1, v3, -0x1

    aget v2, v0, v1

    aput v2, v0, v3

    aput v5, v0, v1

    :cond_6
    :goto_1
    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mAllSortModes:[I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterByStyle "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCTACanCollect()Z
    .locals 2

    const-string v0, "can_connect_network"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    return-object p0
.end method

.method public getCurrentCameraId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result p0

    return p0
.end method

.method public getCurrentMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result p0

    return p0
.end method

.method public getDataBackUpKey(II)I
    .locals 1

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getTransferredMode(I)I

    move-result p1

    :cond_1
    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 p2, p2, 0xc

    or-int/2addr p1, p2

    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    if-eqz p0, :cond_2

    const/high16 p0, 0x10000

    or-int/2addr p1, p0

    :cond_2
    return p1
.end method

.method public getDefaultMode(I)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xa3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mMimojiStandAlone:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xb1

    return p0

    :cond_0
    return v1

    :cond_1
    const/16 p0, 0xa2

    return p0

    :cond_2
    return v1
.end method

.method public getDisplayMode()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000o0o0()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method public getFavoriteModeCount()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getSortModes()[I

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getIntentType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    return p0
.end method

.method public getIntentVideoQuality()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentVideoQuality:I

    return p0
.end method

.method public getLastCameraId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    return p0
.end method

.method public getRawSuperNightImpl()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xad

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00oOOoO()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OoooOOo()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00oo000()Z

    move-result p0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_2
    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public getSortModes()[I
    .locals 4

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mAllSortModes:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getConfigCommonModes()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_sort_modes_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/data/data/global/OooO00o;->OooO00o:Lcom/android/camera/data/data/global/OooO00o;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    array-length p0, p0

    if-eq v1, p0, :cond_2

    const-string p0, "DataItemGlobal"

    const-string v1, "found duplicate mode."

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/data/data/global/OooO0O0;->OooO00o:Lcom/android/camera/data/data/global/OooO0O0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/android/camera/data/data/global/DataItemGlobal;->DEFAULT_SORT_MODES:[I

    return-object p0
.end method

.method public getStartFromKeyguard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    return p0
.end method

.method public hasModesChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mAllSortModes:[I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "pref_user_edit_modes"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->hasModesSortChanged:Z

    return p0
.end method

.method public isFirstShowCTAConCollect()Z
    .locals 1

    const-string v0, "can_connect_network"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFirstUseClonePhoto()Z
    .locals 2

    const-string v0, "first_show_clone_photo"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFirstUseCloneVideo()Z
    .locals 2

    const-string v0, "first_show_clone_video"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isForceMainBackCamera()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsForceMainBackCamera:Z

    return p0
.end method

.method public isGlobalSwitchOn(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isIntentAction()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIntentIDPhoto()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNormalIntent()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnSuperNightAlgoUpAndQuickShot()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00oo00O()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnSuperNightAlgoUpMode()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xad

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0OOo()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00o0()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez p0, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public isOnSuperNightHalfAlgoUp()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xad

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00o()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRetriedIfCameraError()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mRetriedIfCameraError:Z

    return p0
.end method

.method public isTiktokMoreButtonEnabled(Z)Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOOo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "pref_camera_tiktok_more_show_app_key"

    goto :goto_1

    :cond_1
    const-string p1, "pref_camera_tiktok_more_show_market_key"

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTimeOut()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public matchCloneModelVersion(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_clone_model_version"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "matchCloneModelVersion, pref version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", asset version = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataItemGlobal"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public matchCustomWatermarkVersion()Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOoO()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_custom_watermark_version"

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/DataItemBase;->arrayMapContainsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/DataItemBase;->arrayMapRemove(Ljava/lang/String;)V

    :cond_1
    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo0O()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mismatch custom watermark version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataItemGlobal"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZZ)Landroidx/core/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setForceMainBackCamera(Z)V

    iget-object v3, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v3}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000O0Oo()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->isScreenSlideOff(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "<unknown>"

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v6, 0x6

    const-string v7, "android.media.action.VIDEO_CAMERA"

    const-string v8, "android.media.action.STILL_IMAGE_CAMERA"

    const/4 v12, -0x1

    const/4 v13, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_2
    const-string v4, "com.android.gallery.action.IDPHOTO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :sswitch_3
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :sswitch_5
    const-string v4, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_7
    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_8
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v13

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v12

    :goto_1
    const-string v14, "DataItemGlobal"

    packed-switch v4, :pswitch_data_0

    :goto_2
    move v15, v2

    move v4, v12

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->getCameraModeId()I

    move-result v4

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result v4

    goto :goto_3

    :cond_4
    invoke-direct {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result v4

    :cond_5
    :goto_3
    :try_start_0
    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->isUseFrontCamera()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->isOnlyForceOpenMainBackCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v13}, Lcom/android/camera/data/data/global/DataItemGlobal;->setForceMainBackCamera(Z)V

    move v3, v2

    goto :goto_4

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v3

    goto :goto_4

    :cond_7
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v3

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent from voice control assist : pendingOpenId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";pendingOpenModule = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",newIntentType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    iput-boolean v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    iget-object v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->setIntentType(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    if-eq v4, v1, :cond_8

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-static {v4}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    if-eq v3, v1, :cond_9

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    :cond_9
    new-instance v0, Landroidx/core/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    move v4, v12

    const/4 v15, 0x3

    goto :goto_5

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraIntentManager;->getVideoQuality()I

    move-result v4

    const/4 v15, 0x2

    goto :goto_5

    :pswitch_4
    move v4, v12

    move v15, v13

    goto :goto_5

    :pswitch_5
    move v4, v12

    const/4 v15, 0x5

    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/CameraIntentManager;->getCameraFacing()I

    move-result v11

    if-eq v11, v12, :cond_a

    invoke-virtual {v0, v11}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    :cond_a
    if-eqz p5, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result v12

    if-eqz v12, :cond_b

    move v12, v13

    goto :goto_6

    :cond_b
    move v12, v2

    :goto_6
    iget v5, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-ne v5, v15, :cond_d

    iget-boolean v5, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    if-eq v5, v1, :cond_c

    goto :goto_7

    :cond_c
    move v5, v2

    goto :goto_8

    :cond_d
    :goto_7
    move v5, v13

    :goto_8
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0xa2

    const/16 v10, 0xa3

    if-eqz v8, :cond_e

    :goto_9
    invoke-direct {v0, v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v7

    move v8, v7

    move v7, v10

    goto :goto_b

    :cond_e
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-direct {v0, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v7

    move v8, v7

    move v7, v9

    goto :goto_b

    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraIntentManager;->isQuickLaunch()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_9

    :cond_10
    if-eqz v12, :cond_11

    invoke-virtual {v0, v15}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result v7

    if-gez v11, :cond_13

    invoke-direct {v0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v8

    goto :goto_b

    :cond_11
    if-eq v11, v13, :cond_12

    invoke-direct {v0, v15}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result v7

    goto :goto_a

    :cond_12
    invoke-direct {v0, v15}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentModeForFrontCamera(I)I

    move-result v7

    :cond_13
    :goto_a
    invoke-direct {v0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v8

    :goto_b
    if-ne v7, v10, :cond_14

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v10

    invoke-interface {v10, v8, v15}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v10

    check-cast v10, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v10

    if-eqz v10, :cond_14

    const/16 v7, 0xa5

    :cond_14
    const/16 v10, 0xa8

    if-eq v7, v10, :cond_19

    const/16 v10, 0xaa

    if-ne v7, v10, :cond_15

    goto :goto_c

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isActualTimeOut()Z

    move-result v9

    if-nez v9, :cond_16

    if-eqz v5, :cond_1b

    :cond_16
    const/16 v9, 0xb3

    if-ne v7, v9, :cond_17

    const/16 v7, 0xd1

    goto :goto_d

    :cond_17
    const/16 v9, 0xb9

    if-ne v7, v9, :cond_18

    const/16 v7, 0xd2

    goto :goto_d

    :cond_18
    const/16 v9, 0xd5

    if-ne v7, v9, :cond_1b

    const/16 v7, 0xd3

    goto :goto_d

    :cond_19
    :goto_c
    iget-object v7, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v7}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00ooOO0()Z

    move-result v7

    if-eqz v7, :cond_1a

    const/16 v9, 0xac

    :cond_1a
    move v7, v9

    :cond_1b
    :goto_d
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v13

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v6, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v6, v3

    const-string v2, "parseIntent timeOut = %s, intentChanged = %s, action = %s, pendingOpenId = %s, pendingOpenModule = %s, intentCameraId = %s"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_20

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-eqz v5, :cond_1c

    iput v15, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    iput v4, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentVideoQuality:I

    iput-boolean v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    iget-object v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1, v15}, Lcom/android/camera/data/data/global/ComponentModuleList;->setIntentType(I)V

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    if-eq v7, v1, :cond_1d

    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-static {v7}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    if-eq v8, v1, :cond_1e

    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    :cond_1e
    iget-object v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->clearArrayMap()V

    iget-object v1, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataBackUp:Lcom/android/camera/data/backup/DataBackUp;

    invoke-interface {v1}, Lcom/android/camera/data/backup/DataBackUp;->clearBackUp()V

    :cond_1f
    invoke-virtual {v0, v7, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(II)I

    move-result v1

    iget-object v2, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataBackUp:Lcom/android/camera/data/backup/DataBackUp;

    iget-object v0, v0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-interface {v2, v0, v1}, Lcom/android/camera/data/backup/DataBackUp;->revertOrCreateRunning(Lcom/android/camera/data/data/runing/DataItemRunning;I)V

    :cond_20
    new-instance v0, Landroidx/core/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_8
        -0x62d863dd -> :sswitch_7
        -0x5b1e1211 -> :sswitch_6
        -0x566ad1d3 -> :sswitch_5
        0x1ba9c1af -> :sswitch_4
        0x29c9b033 -> :sswitch_3
        0x2eb190a7 -> :sswitch_2
        0x43680478 -> :sswitch_1
        0x4c4c1b77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public provideKey()Ljava/lang/String;
    .locals 0

    const-string p0, "camera_settings_global"

    return-object p0
.end method

.method public reInit()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "pref_camera_open_time"

    invoke-interface {v0, v4, v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v2, "open_camera_fail_key"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-interface {v0, v4, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reInit: mLastCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", currentCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataItemGlobal"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "pref_user_edit_modes"

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getSortModes()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_sort_modes_key"

    invoke-interface {v2, v4, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    iput-boolean v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->hasModesSortChanged:Z

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public resetAll()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mAllSortModes:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->hasModesSortChanged:Z

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->clear()V

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "pref_version_key"

    const/4 v1, 0x4

    invoke-interface {p0, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public resetTimeOut()V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pref_camera_open_time"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setCTACanCollect(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "can_connect_network"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setCameraId(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraId: mLastCameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", cameraId = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataItemGlobal"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCameraIdTransient(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraIdTransient: mLastCameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", cameraId = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataItemGlobal"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentMode(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_camera_mode_key_intent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setFirstUseClonePhoto(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "first_show_clone_photo"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setFirstUseCloneVideo(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "first_show_clone_video"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setForceMainBackCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsForceMainBackCamera:Z

    return-void
.end method

.method public setRetriedIfCameraError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mRetriedIfCameraError:Z

    return-void
.end method

.method public setSortModes([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mAllSortModes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mAllSortModes:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->hasModesSortChanged:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSortModes "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataItemGlobal"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setStartFromKeyguard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    return-void
.end method

.method public updateCloneModelVersion(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "pref_clone_model_version"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCloneModelVersion "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataItemGlobal"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateCustomWatermarkVersion()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mDataItemFeature:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOoO()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo0O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v1, "pref_custom_watermark_version"

    invoke-interface {p0, v1, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom watermark version updated: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataItemGlobal"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
