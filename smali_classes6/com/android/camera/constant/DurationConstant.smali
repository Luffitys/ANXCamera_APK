.class public Lcom/android/camera/constant/DurationConstant;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DURATION_AMBILIGHT_CAPTURE:I = 0x7d0

.field public static final DURATION_AMBILIGHT_CROWD_MOVING_CAPTURE:I = 0x7d0

.field public static final DURATION_AMBILIGHT_MAGIC_STAR_CAPTURE:I

.field public static final DURATION_AMBILIGHT_STAR_TRACK_CAPTURE:I

.field public static final DURATION_AUTOZOOM:I = 0x320

.field public static final DURATION_CHECK_CAMERA_ALIVE:I = 0x1388

.field public static final DURATION_FILM_DREAM_RECORD:I = 0x2710

.field public static final DURATION_FPS960_VIDEO:I = 0x7d0

.field public static final DURATION_GIF_VIDEO_RECORDING_FUN:I = 0x1388

.field public static final DURATION_LANDSCAPE_HINT:I = 0x1770

.field public static final DURATION_LIVE_RECORD:I = 0x3c28

.field public static final DURATION_MI_LIVE_RECORD:I = 0x3a98

.field public static final DURATION_RESET_FALLBACK:I = 0x9c4

.field public static final DURATION_RESET_WAIT_SAVE_FINISH_STATE:I = 0x1388

.field public static final DURATION_STARTUP_BLUR_MASK:I = 0xc8

.field public static final DURATION_STARTUP_MASK:I = 0x64

.field public static final DURATION_SUPER_NIGHT_CAPTURE:I = 0x7d0

.field public static final DURATION_SUPER_NIGHT_CAPTURE_HINT:I = 0x12c

.field public static final DURATION_UNSPECIFIED:I = -0x1

.field public static final DURATION_VIDEO_BOKEH_RECORDING:I = 0x7530

.field public static final DURATION_VIDEO_RECORDING_CIRCLE:I = 0x2710

.field public static final DURATION_VIDEO_RECORDING_FUN:I = 0x3a98

.field public static final MIN_RECORD_TIME:J = 0x1f4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e20

    goto :goto_0

    :cond_0
    const/16 v0, 0x7530

    :goto_0
    sput v0, Lcom/android/camera/constant/DurationConstant;->DURATION_AMBILIGHT_MAGIC_STAR_CAPTURE:I

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1900

    goto :goto_1

    :cond_1
    const/16 v0, 0xc80

    :goto_1
    sput v0, Lcom/android/camera/constant/DurationConstant;->DURATION_AMBILIGHT_STAR_TRACK_CAPTURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
