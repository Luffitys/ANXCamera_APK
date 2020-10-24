.class public Lcom/android/camera/data/data/runing/DataItemRunning;
.super Lcom/android/camera/data/data/DataItemBase;
.source ""


# static fields
.field private static final BACKUP_KEY:Ljava/lang/String; = "camera_running_backup"

.field public static final DATA_CONFIG_ULTRA_PIXEL_PORTRAIT:Ljava/lang/String; = "pref_camera_ultra_pixel_portrait_mode_key"

.field public static final DATA_RUNING_AI_108_STATUS:Ljava/lang/String; = "AI_108_SR_UPSCALE"

.field public static final DATA_RUNING_CAMERA_SNAP_PAINT_SECOND_CLOCKWISE:Ljava/lang/String; = "camera_snap_paint_second_clockwise"

.field public static final DATA_RUNING_CAMERA_SNAP_PAINT_SECOND_TIME_ANGLE:Ljava/lang/String; = "camera_snap_paint_second_time_angle"

.field public static final DATA_RUNING_HAND_GESTURE:Ljava/lang/String; = "pref_hand_gesture"

.field public static final DATA_RUNING_HAND_GESTURE_STATUS:Ljava/lang/String; = "pref_hand_gesture_status"

.field public static final DATA_RUNING_SPEECH_SHUTTER:Ljava/lang/String; = "pref_speech_shutter"

.field public static final DATA_RUNING_SPEECH_SHUTTER_STATUS:Ljava/lang/String; = "pref_speech_shutter_status"

.field public static final DATA_RUNNING_AI_AUDIO:Ljava/lang/String; = "pref_ai_audio"

.field public static final DATA_RUNNING_AI_WATERMARK:Ljava/lang/String; = "pref_watermark_key"

.field public static final DATA_RUNNING_AUTO_ZOOM:Ljava/lang/String; = "pref_camera_auto_zoom"

.field public static final DATA_RUNNING_COLOR_ENHANCE:Ljava/lang/String; = "pref_color_enhance"

.field public static final DATA_RUNNING_DOCUMENT_MODE:Ljava/lang/String; = "pref_document_mode_key"

.field public static final DATA_RUNNING_DOCUMENT_MODE_VALUE:Ljava/lang/String; = "pref_document_mode_value_key"

.field public static final DATA_RUNNING_EXPOSURE_FEEDBACK:Ljava/lang/String; = "pref_camera_exposure_feedback"

.field public static final DATA_RUNNING_EYE_LIGHT_TYPE:Ljava/lang/String; = "pref_eye_light_type_key"

.field public static final DATA_RUNNING_FAST_MOTION:Ljava/lang/String; = "pref_fast_motion_key"

.field public static final DATA_RUNNING_FAST_MOTION_PRO:Ljava/lang/String; = "pref_fast_motion_pro_key"

.field public static final DATA_RUNNING_FILTER_INDEX:Ljava/lang/String; = "pref_camera_shader_coloreffect_key"

.field public static final DATA_RUNNING_FOCUS_PEAK:Ljava/lang/String; = "pref_camera_peak_key"

.field public static final DATA_RUNNING_GENDER_AGE:Ljava/lang/String; = "pref_camera_show_gender_age_key"

.field public static final DATA_RUNNING_GROUP_SELFIES:Ljava/lang/String; = "pref_camera_groupshot_mode_key"

.field public static final DATA_RUNNING_HHT:Ljava/lang/String; = "pref_camera_hand_night_key"

.field public static final DATA_RUNNING_KALEIDOSCOPE:Ljava/lang/String; = "pref_kaleidoscope"

.field public static final DATA_RUNNING_LIVE_MUSIC_FIRST_REQUEST_TIME:Ljava/lang/String; = "pref_key_live_music_first_request_time"

.field public static final DATA_RUNNING_MAGIC_FOCUS:Ljava/lang/String; = "pref_camera_ubifocus_key"

.field public static final DATA_RUNNING_MAGIC_MIRROR:Ljava/lang/String; = "pref_camera_magic_mirror_key"

.field public static final DATA_RUNNING_MANUALLY:Ljava/lang/String; = "pref_camera_manual_mode_key"

.field public static final DATA_RUNNING_MODULE_ULTRA_PIXEL_TIP:Ljava/lang/String; = "pref_module_ultra_pixel_tip"

.field public static final DATA_RUNNING_MOON_MODE_VALUE:Ljava/lang/String; = "pref_moon_mode_value_key"

.field public static final DATA_RUNNING_PANORAMA_MOVE_DIRECTION:Ljava/lang/String; = "pref_panorana_move_direction_key"

.field public static final DATA_RUNNING_PORTRAIT_LIGHTING:Ljava/lang/String; = "pref_portrait_lighting"

.field public static final DATA_RUNNING_PORTRAIT_MODE:Ljava/lang/String; = "pref_camera_portrait_mode_key"

.field public static final DATA_RUNNING_PRO_VIDEO_RECORDING_SIMPLE:Ljava/lang/String; = "pref_pro_video_recording_simple"

.field public static final DATA_RUNNING_RETAIN_ZOOM:Ljava/lang/String; = "pref_camera_zoom_retain_key"

.field public static final DATA_RUNNING_SCENE:Ljava/lang/String; = "pref_camera_scenemode_setting_key"

.field public static final DATA_RUNNING_SCENE_VALUE:Ljava/lang/String; = "pref_camera_scenemode_key"

.field public static final DATA_RUNNING_SQUARE_MODE:Ljava/lang/String; = "pref_camera_square_mode_key"

.field public static final DATA_RUNNING_SUPER_EIS:Ljava/lang/String; = "pref_camera_super_eis"

.field public static final DATA_RUNNING_SUPER_RESOLUTION:Ljava/lang/String; = "pref_camera_super_resolution_key"

.field public static final DATA_RUNNING_TILT:Ljava/lang/String; = "pref_camera_tilt_shift_mode"

.field public static final DATA_RUNNING_TILT_VALUE:Ljava/lang/String; = "pref_camera_tilt_shift_key"

.field public static final DATA_RUNNING_TIMER:Ljava/lang/String; = "pref_delay_capture_mode"

.field public static final DATA_RUNNING_ULTRA_PIXEL:Ljava/lang/String; = "pref_ultra_pixel"

.field public static final DATA_RUNNING_ULTRA_WIDE_BOKEH:Ljava/lang/String; = "pref_ultra_wide_bokeh_enabled"

.field public static final DATA_RUNNING_VIDEO_FAST:Ljava/lang/String; = "pref_video_speed_fast_key"

.field public static final DATA_RUNNING_VIDEO_SUBTITLE:Ljava/lang/String; = "pref_video_subtitle_key"

.field private static final KEY:Ljava/lang/String; = "camera_running"

.field private static final TAG:Ljava/lang/String; = "DataItemRunning"


# instance fields
.field private ComponentRunningFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

.field private componentRunningTiltValue:Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

.field private mCinematicAspectRatio:Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

.field private mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

.field private mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

.field private mComponentConfigZoom:Lcom/android/camera/data/data/config/ComponentRunningZoom;

.field private mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

.field private mComponentRunningAIWatermarkExtend:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

.field private mComponentRunningAiAudio:Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

.field private mComponentRunningAiEnhancedVideo:Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

.field private mComponentRunningAutoZoom:Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

.field private mComponentRunningColorEnhance:Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

.field private mComponentRunningDocument:Lcom/android/camera/data/data/runing/ComponentRunningDocument;

.field private mComponentRunningDualVideo:Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

.field private mComponentRunningEisPro:Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

.field private mComponentRunningEyeLight:Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;

.field private mComponentRunningFastMotionDuration:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

.field private mComponentRunningFastMotionPro:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

.field private mComponentRunningFastMotionSpeed:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

.field private mComponentRunningKaleidoscope:Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

.field private mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

.field private mComponentRunningMacroMode:Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

.field private mComponentRunningMasterFilter:Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

.field private mComponentRunningMoon:Lcom/android/camera/data/data/runing/ComponentRunningMoon;

.field private mComponentRunningSceneValue:Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

.field private mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

.field private mComponentRunningSubtitle:Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

.field private mComponentRunningSuperEIS:Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

.field private mComponentRunningTimer:Lcom/android/camera/data/data/runing/ComponentRunningTimer;

.field private mComponentUltraPixel:Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

.field private mCurrentSupported:Landroid/util/SparseBooleanArray;

.field private mDawnValues:Landroidx/collection/SimpleArrayMap;

.field private mEntranceMode:I

.field private mLastUiStyle:I

.field private mRecordingClosedElements:[I

.field private mSupportHandGesture:Z

.field private mSupportMacroMode:Z

.field private mSupportSpeechShutter:Z

.field private mSupportUltraPixelPortrait:Z

.field private mUiStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    new-instance v0, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentUltraPixel:Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    return-void
.end method

.method private getAIWatermarkData(I)Ljava/util/ArrayList;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    const/16 v1, 0xbc

    if-eq p1, v1, :cond_0

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f100755

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f100757

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v0, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f100754

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v0, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f100756

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v0, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0OO00O()I

    move-result p1

    if-ne p1, v2, :cond_1

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f100753

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f100758

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f100759

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method private getFastMotionData()Ljava/util/ArrayList;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const v3, 0x7f1004f5

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f1004f2

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private getFastMotionDataPro()Ljava/util/ArrayList;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const v3, 0x7f1002c9

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private isModeSupportMacro(II)Z
    .locals 0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00O0O0()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    const/16 p0, 0xa3

    if-eq p0, p2, :cond_0

    const/16 p0, 0xa5

    if-eq p0, p2, :cond_0

    const/16 p0, 0xa2

    if-eq p0, p2, :cond_0

    const/16 p0, 0xcc

    if-eq p0, p2, :cond_0

    const/16 p0, 0xb4

    if-eq p0, p2, :cond_0

    const/16 p0, 0xa9

    if-eq p0, p2, :cond_0

    const/16 p0, 0xac

    if-eq p0, p2, :cond_0

    const/16 p0, 0xba

    if-eq p0, p2, :cond_0

    const/16 p0, 0xa7

    if-ne p0, p2, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private reCheckMutexEarly(I)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckMutexEarly(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public appendDrawnValues(Landroidx/collection/SimpleArrayMap;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mDawnValues:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method public clearArrayMap()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/data/data/DataItemBase;->clearArrayMap()V

    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAIWatermarkExtend:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->resetAIWatermark(Z)V

    :cond_0
    return-void
.end method

.method public clearDrawnValues()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mDawnValues:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method public getAi108Running()Z
    .locals 2

    const-string v0, "AI_108_SR_UPSCALE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBackupKey()I
    .locals 2

    const-string v0, "camera_running_backup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getCameraSnapPaintSecondClockWiseRunning()Z
    .locals 2

    const-string v0, "camera_snap_paint_second_clockwise"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCameraSnapPaintSecondTimeAngleRunning()F
    .locals 2

    const-string v0, "camera_snap_paint_second_time_angle"

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getCinematicAspectRatio()Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mCinematicAspectRatio:Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mCinematicAspectRatio:Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mCinematicAspectRatio:Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

    return-object p0
.end method

.method public getComponentConfigAmbilight()Lcom/android/camera/data/data/config/ComponentConfigAmbilight;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigAmbilight;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigAmbilight:Lcom/android/camera/data/data/config/ComponentConfigAmbilight;

    return-object p0
.end method

.method public getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    return-object p0
.end method

.method public getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAIWatermarkExtend:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAIWatermarkData(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAIWatermarkExtend:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAIWatermarkExtend:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAIWatermarkData(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    :cond_2
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    return-object p0
.end method

.method public getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAiAudio:Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAiAudio:Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAiAudio:Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    return-object p0
.end method

.method public getComponentRunningAiEnhancedVideo()Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAiEnhancedVideo:Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAiEnhancedVideo:Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAiEnhancedVideo:Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    return-object p0
.end method

.method public getComponentRunningAutoZoom()Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAutoZoom:Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAutoZoom:Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningAutoZoom:Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    return-object p0
.end method

.method public getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningColorEnhance:Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningColorEnhance:Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningColorEnhance:Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    return-object p0
.end method

.method public getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningDocument:Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningDocument;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningDocument:Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningDocument:Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    return-object p0
.end method

.method public getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningDualVideo:Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningDualVideo:Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningDualVideo:Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    return-object p0
.end method

.method public getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningEisPro:Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningEisPro:Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningEisPro:Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    return-object p0
.end method

.method public getComponentRunningEyeLight()Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningEyeLight:Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningEyeLight:Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningEyeLight:Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;

    return-object p0
.end method

.method public getComponentRunningFastMotion()Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->ComponentRunningFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getFastMotionData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->ComponentRunningFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->ComponentRunningFastMotion:Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    return-object p0
.end method

.method public getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningFastMotionDuration:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningFastMotionDuration:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningFastMotionDuration:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    return-object p0
.end method

.method public getComponentRunningFastMotionPro()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningFastMotionPro:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getFastMotionDataPro()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningFastMotionPro:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningFastMotionPro:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    return-object p0
.end method

.method public getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningFastMotionSpeed:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningFastMotionSpeed:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningFastMotionSpeed:Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    return-object p0
.end method

.method public getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningKaleidoscope:Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningKaleidoscope:Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningKaleidoscope:Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    return-object p0
.end method

.method public getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningLighting:Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    return-object p0
.end method

.method public getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningMacroMode:Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningMacroMode:Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningMacroMode:Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    return-object p0
.end method

.method public getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningMasterFilter:Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningMasterFilter:Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningMasterFilter:Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    return-object p0
.end method

.method public getComponentRunningMoon()Lcom/android/camera/data/data/runing/ComponentRunningMoon;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningMoon:Lcom/android/camera/data/data/runing/ComponentRunningMoon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningMoon;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningMoon;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningMoon:Lcom/android/camera/data/data/runing/ComponentRunningMoon;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningMoon:Lcom/android/camera/data/data/runing/ComponentRunningMoon;

    return-object p0
.end method

.method public getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSceneValue:Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSceneValue:Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSceneValue:Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    return-object p0
.end method

.method public getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    return-object p0
.end method

.method public getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSubtitle:Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSubtitle:Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSubtitle:Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    return-object p0
.end method

.method public getComponentRunningSuperEIS()Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSuperEIS:Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSuperEIS:Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningSuperEIS:Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

    return-object p0
.end method

.method public getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->componentRunningTiltValue:Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->componentRunningTiltValue:Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->componentRunningTiltValue:Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    return-object p0
.end method

.method public getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningTimer:Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningTimer:Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningTimer:Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    return-object p0
.end method

.method public getComponentRunningZoom()Lcom/android/camera/data/data/config/ComponentRunningZoom;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigZoom:Lcom/android/camera/data/data/config/ComponentRunningZoom;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentRunningZoom;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningZoom;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigZoom:Lcom/android/camera/data/data/config/ComponentRunningZoom;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentConfigZoom:Lcom/android/camera/data/data/config/ComponentRunningZoom;

    return-object p0
.end method

.method public getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentUltraPixel:Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    return-object p0
.end method

.method public getDawnValues()Landroidx/collection/SimpleArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mDawnValues:Landroidx/collection/SimpleArrayMap;

    return-object p0
.end method

.method public getDrawnBackupKey()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mDawnValues:Landroidx/collection/SimpleArrayMap;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "camera_running_backup"

    invoke-virtual {p0, v1, v0}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getEntranceMode(I)I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mEntranceMode:I

    if-nez p0, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public getHandGestureRunning()Z
    .locals 2

    const-string v0, "pref_hand_gesture_status"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getLastUiStyle()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mLastUiStyle:I

    return p0
.end method

.method public getLiveMusicFirstRequestTime()J
    .locals 3

    const-string v0, "pref_key_live_music_first_request_time"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProVideoRecordingSimpleRunning()Z
    .locals 2

    const-string v0, "pref_pro_video_recording_simple"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getRecordingClosedElements()[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mRecordingClosedElements:[I

    return-object p0
.end method

.method public getSpeechShutterRunning()Z
    .locals 2

    const-string v0, "pref_speech_shutter_status"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getUiStyle()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mUiStyle:I

    return p0
.end method

.method public getVideoSpeed()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_video_speed_fast_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "fast"

    return-object p0

    :cond_0
    const-string p0, "normal"

    return-object p0
.end method

.method public isSwitchOn(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTransient()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 0

    const-string p0, "camera_running"

    return-object p0
.end method

.method public reConfigCinematicAspectRatioIfRatioChanged(ILjava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getCinematicAspectRatio()Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;->isSwitchOn(I)Z

    move-result v0

    const-string v1, "16x9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getCinematicAspectRatio()Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;->setEnabled(IZ)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public reInitComponent(IILcom/android/camera2/CameraCapabilities;I)V
    .locals 1

    if-nez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentUltraPixel:Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->reInit(IILcom/android/camera2/CameraCapabilities;Z)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->reInit(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAutoZoom()Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->reInit(I)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiEnhancedVideo()Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->reInit(I)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->reInit(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->reInit(IIZ)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSuperEIS()Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/android/camera/data/data/runing/ComponentRunningSuperEIS;->reInit(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->reInit(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotion()Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->reInit()V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object p4

    invoke-virtual {p4, p1, p3}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object p4

    invoke-virtual {p4, p1, p3}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->reInit(Lcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getCinematicAspectRatio()Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/android/camera/data/data/config/ComponentRunningCinematicAspectRatio;->reInit(I)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningZoom()Lcom/android/camera/data/data/config/ComponentRunningZoom;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->reInit(II)V

    return-void
.end method

.method public reInitSupport(II)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportHandGesture:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportSpeechShutter:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportMacroMode:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportUltraPixelPortrait:Z

    const/16 v0, 0xcd

    const/16 v1, 0xad

    const/16 v2, 0xab

    const/16 v3, 0xa5

    const/16 v4, 0xa3

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->ooOO()Z

    move-result v6

    if-eqz v6, :cond_1

    iput-boolean v5, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportHandGesture:Z

    :cond_1
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->oo000o()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    const/16 v2, 0xb1

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_4

    const/16 v1, 0xb8

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiPhoto()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    if-eq p1, v0, :cond_4

    const/16 v0, 0xbc

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    if-nez p2, :cond_5

    const/16 v0, 0xaf

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xd2

    if-eq p1, v0, :cond_4

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_5

    :cond_4
    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportSpeechShutter:Z

    :cond_5
    invoke-direct {p0, p2, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isModeSupportMacro(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportMacroMode:Z

    if-ne p2, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-ne p1, v3, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result p2

    if-nez p2, :cond_7

    sget-boolean p2, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoOO:Z

    iput-boolean p2, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportUltraPixelPortrait:Z

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->reCheckMutexEarly(I)V

    :cond_7
    return-void
.end method

.method public setAi108Running(Z)V
    .locals 1

    const-string v0, "AI_108_SR_UPSCALE"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setBackupKey(I)V
    .locals 1

    const-string v0, "camera_running_backup"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setCameraSnapPaintSecondClockWiseRunning(Z)V
    .locals 1

    const-string v0, "camera_snap_paint_second_clockwise"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setCameraSnapPaintSecondTimeAngleRunning(F)V
    .locals 1

    const-string v0, "camera_snap_paint_second_time_angle"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putFloat(Ljava/lang/String;F)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setEntranceMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mEntranceMode:I

    return-void
.end method

.method public setHandGestureRunning(Z)V
    .locals 1

    const-string v0, "pref_hand_gesture_status"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setLiveMusicFirstRequestTime(J)V
    .locals 1

    const-string v0, "pref_key_live_music_first_request_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/data/data/DataItemBase;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setProVideoRecordingSimpleRunning(Z)V
    .locals 1

    const-string v0, "pref_pro_video_recording_simple"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setRecordingClosedElements([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mRecordingClosedElements:[I

    return-void
.end method

.method public setSpeechShutterRunning(Z)V
    .locals 1

    const-string v0, "pref_speech_shutter_status"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setUiStyle(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataItemRunning"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mUiStyle:I

    iput v0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mLastUiStyle:I

    iput p1, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mUiStyle:I

    return-void
.end method

.method public supportHandGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportHandGesture:Z

    return p0
.end method

.method public supportMacroMode(II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isModeSupportMacro(II)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportPopShineEntry()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportPopUpEntry()Z

    move-result p0

    return p0
.end method

.method public supportSpeechShutter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportSpeechShutter:Z

    return p0
.end method

.method public supportSuperMacroMode()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportMacroMode:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportTopShineEntry()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportTopConfigEntry()Z

    move-result p0

    return p0
.end method

.method public supportUltraPixel()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mComponentUltraPixel:Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public supportUltraPixelPortrait()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/DataItemRunning;->mSupportUltraPixelPortrait:Z

    return p0
.end method

.method public switchOff(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public switchOn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public triggerSwitchAndGet(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
