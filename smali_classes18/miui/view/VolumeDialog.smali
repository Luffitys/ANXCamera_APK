.class public Lmiui/view/VolumeDialog;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumeDialog$VolumePanelDelegate;,
        Lmiui/view/VolumeDialog$StreamState;,
        Lmiui/view/VolumeDialog$VolumeRow;,
        Lmiui/view/VolumeDialog$VolumeSeekbarProgress;,
        Lmiui/view/VolumeDialog$VolumeIconRes;,
        Lmiui/view/VolumeDialog$CustomDialog;,
        Lmiui/view/VolumeDialog$SafetyWarningDialog;,
        Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;,
        Lmiui/view/VolumeDialog$H;
    }
.end annotation


# static fields
.field private static final LAYOUT_TRANSITION_ANIMATION_DURATION:I = 0xc8

.field private static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field private static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field private static final TAG:Ljava/lang/String; = "VolumeDialog"

.field private static final TYPE_FM:I = 0xa

.field private static final UPDATE_ANIMATION_DURATION:I = 0x50

.field private static final USER_ATTEMPT_GRACE_PERIOD:J = 0x3e8L

.field private static final VIBRATE_DELAY:I = 0x12c

.field private static final VOLUME_ICON_TYPE_ALARM:I = 0x0

.field private static final VOLUME_ICON_TYPE_BLUETOOTH:I = 0x1

.field private static final VOLUME_ICON_TYPE_FM:I = 0x8

.field private static final VOLUME_ICON_TYPE_HEADSET:I = 0x2

.field private static final VOLUME_ICON_TYPE_HIFI:I = 0x7

.field private static final VOLUME_ICON_TYPE_MEDIA:I = 0x3

.field private static final VOLUME_ICON_TYPE_PHONE:I = 0x4

.field private static final VOLUME_ICON_TYPE_RING:I = 0x5

.field private static final VOLUME_ICON_TYPE_SPEAKER:I = 0x6

.field private static final sVolumeIconTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumeDialog$VolumeIconRes;",
            ">;"
        }
    .end annotation
.end field

.field static sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;


# instance fields
.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private mActiveStream:I

.field private final mAm:Landroid/media/AudioManager;

.field private mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

.field private mDialog:Lmiui/view/VolumeDialog$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogShowTime:J

.field private mDialogView:Landroid/view/ViewGroup;

.field public mExpandAnimating:Z

.field private mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandButton:Landroid/widget/ImageButton;

.field public mExpanded:Z

.field private final mHandler:Lmiui/view/VolumeDialog$H;

.field private mInScreenshot:Z

.field private mLastStatus:Z

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mRingerMode:I

.field private mRingerModeLayout:Lmiui/view/RingerModeLayout;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/view/VolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Landroid/app/AlertDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowing:Z

.field private mStatusBarHeight:I

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mVolumeRowSpaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeRowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    new-instance v0, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    const v1, 0x11070217

    const v2, 0x11070219

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;-><init>(IILmiui/view/VolumeDialog$1;)V

    sput-object v0, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v4, 0x1107007d

    const v5, 0x1107007e

    const v6, 0x1107007c

    invoke-direct {v2, v4, v5, v6, v3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v4, 0x11070082

    const v5, 0x11070083

    const v6, 0x11070081

    invoke-direct {v2, v4, v5, v6, v3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v4, 0x1107008a

    const v5, 0x1107008b

    const v6, 0x11070089

    invoke-direct {v2, v4, v5, v6, v3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v4, 0x11070092

    const v5, 0x11070093

    const v6, 0x11070091

    invoke-direct {v2, v4, v5, v6, v3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v7, 0x11070098

    const v8, 0x11070099

    const v9, 0x11070097

    invoke-direct {v2, v7, v8, v9, v3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v7, 0x1107009c

    const v8, 0x110700a0

    const v9, 0x1107009b

    invoke-direct {v2, v7, v8, v9, v3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v7, 0x110700a3

    const v8, 0x110700a4

    const v9, 0x110700a2

    invoke-direct {v2, v7, v8, v9, v3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "scorpio"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e8

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "lithium"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    goto :goto_e8

    :cond_d9
    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v7, 0x1107008e

    const v8, 0x1107008f

    const v9, 0x1107008d

    invoke-direct {v2, v7, v8, v9, v3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    goto :goto_ed

    :cond_e8
    :goto_e8
    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v2, v4, v5, v6, v3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    :goto_ed
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v2, v4, v5, v6, v3}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/view/VolumeDialog$VolumePanelDelegate;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/view/VolumeDialog$H;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$H;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    iput v0, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    new-instance v0, Lmiui/view/VolumeDialog$1;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$1;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_82

    iput-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    new-instance v0, Lmiui/view/VolumeDialog$7;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$7;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    new-instance v0, Lmiui/view/VolumeDialog$8;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$8;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    nop

    :array_82
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0xa
    .end array-data
.end method

.method static synthetic access$1500(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    return-void
.end method

.method static synthetic access$1600(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    return-void
.end method

.method static synthetic access$1800(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lmiui/view/VolumeDialog;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/view/VolumeDialog;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    return v0
.end method

.method static synthetic access$2000(Lmiui/view/VolumeDialog;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/view/VolumeDialog;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    return p1
.end method

.method static synthetic access$300(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    return-object v0
.end method

.method static synthetic access$3200(Lmiui/view/VolumeDialog;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3302(Lmiui/view/VolumeDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3400(Lmiui/view/VolumeDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    return v0
.end method

.method static synthetic access$3402(Lmiui/view/VolumeDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    return p1
.end method

.method static synthetic access$3500(Lmiui/view/VolumeDialog;)Lmiui/view/RingerModeLayout;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lmiui/view/VolumeDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic access$3700(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->dismissH()V

    return-void
.end method

.method static synthetic access$3800(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$3900(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    return-void
.end method

.method static synthetic access$4000(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic access$4100(Lmiui/view/VolumeDialog;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/view/VolumeDialog;->stateChangedH(II)V

    return-void
.end method

.method static synthetic access$4200(Lmiui/view/VolumeDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->updateLayoutDirectionH(I)V

    return-void
.end method

.method static synthetic access$4300(Lmiui/view/VolumeDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$4400(Lmiui/view/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->vibrateH()V

    return-void
.end method

.method static synthetic access$4502(Lmiui/view/VolumeDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    return p1
.end method

.method static synthetic access$4700(Landroid/widget/SeekBar;I)I
    .registers 3

    invoke-static {p0, p1}, Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lmiui/view/VolumeDialog;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$4900()Ljava/util/Map;
    .registers 1

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5000(Lmiui/view/VolumeDialog;)J
    .registers 3

    iget-wide v0, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    return-wide v0
.end method

.method static synthetic access$5100(Lmiui/view/VolumeDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->streamDeviceChanged(I)V

    return-void
.end method

.method static synthetic access$5200(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$VolumePanelDelegate;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    return-object v0
.end method

.method static synthetic access$5300(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5400(Lmiui/view/VolumeDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addRow(IIZ)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Lmiui/view/VolumeDialog;->initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x1020000

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110600f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$402(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    :cond_38
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private adjustDialogPosition()V
    .registers 5

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lmiui/view/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    nop

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getStatusBarHeight()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_29
    return-void
.end method

.method private computeTimeoutH()I
    .registers 2

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    if-eqz v0, :cond_11

    iget-boolean v0, v0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    if-eqz v0, :cond_11

    goto :goto_14

    :cond_11
    const/16 v0, 0xbb8

    return v0

    :cond_14
    :goto_14
    const/16 v0, 0x1770

    return v0
.end method

.method private dismissH()V
    .registers 4

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_17
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_52

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lmiui/view/VolumeDialog$CustomDialog;->dismiss()V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v1, v0}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->notifyVolumeControllerVisible(Z)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v0}, Lmiui/view/RingerModeLayout;->cleanUp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0
.end method

.method private expandVolumeBar(Z)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/VolumeDialog$4;

    invoke-direct {v1, p0}, Lmiui/view/VolumeDialog$4;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/VolumeDialog$5;

    invoke-direct {v1, p0, p1}, Lmiui/view/VolumeDialog$5;-><init>(Lmiui/view/VolumeDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private findRow(I)Lmiui/view/VolumeDialog$VolumeRow;
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_19

    return-object v1

    :cond_19
    goto :goto_6

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private getConservativeCollapseDuration()I
    .registers 2

    const/16 v0, 0x258

    return v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .registers 6

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/lit8 v1, v0, 0x64

    add-int/lit8 v1, v1, -0x1

    if-nez p1, :cond_c

    const/4 v2, 0x0

    goto :goto_19

    :cond_c
    if-ne p1, v0, :cond_11

    div-int/lit8 v2, v0, 0x64

    goto :goto_19

    :cond_11
    int-to-float v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    :goto_19
    nop

    return v2
.end method

.method private getMappedStream(I)I
    .registers 4

    iget-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    array-length v1, v0

    if-lt p1, v1, :cond_7

    const/4 v0, 0x3

    return v0

    :cond_7
    aget v0, v0, p1

    return v0
.end method

.method private getStatusBarHeight()I
    .registers 3

    iget v0, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    if-gez v0, :cond_13

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    :cond_13
    iget v0, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    return v0
.end method

.method private initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;
    .registers 8

    new-instance v0, Lmiui/view/VolumeDialog$VolumeRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;-><init>(Lmiui/view/VolumeDialog$1;)V

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v0, p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$702(Lmiui/view/VolumeDialog$VolumeRow;I)I

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I
    invoke-static {v0, p2}, Lmiui/view/VolumeDialog$VolumeRow;->access$802(Lmiui/view/VolumeDialog$VolumeRow;I)I

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I
    invoke-static {v0, p2}, Lmiui/view/VolumeDialog$VolumeRow;->access$902(Lmiui/view/VolumeDialog$VolumeRow;I)I

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v0, p3}, Lmiui/view/VolumeDialog$VolumeRow;->access$1002(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v2}, Lmiui/view/VolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x110b003f

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0, v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$502(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    const v3, 0x110900e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SeekBar;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v0, v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$1102(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v2

    new-instance v3, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v3, p0, v1}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$1;)V

    invoke-virtual {v2, v3}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$2;

    invoke-direct {v2, p0, v0}, Lmiui/view/VolumeDialog$2;-><init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x110900df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1302(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    sget-object v2, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v2, v2, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-object v0
.end method

.method private isAttached()Z
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private orderVolumeRowsH()V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_cb

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_25

    iget v5, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-direct {p0, v5}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v3

    if-nez v3, :cond_25

    const-string v5, "VolumeDialog"

    const-string v6, "terrible thing happens in orderVolumeRowsH"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    if-nez v3, :cond_52

    iget-object v5, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v3

    iget v5, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v3, v5, :cond_47

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    add-int/lit8 v5, v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    move-object v3, v0

    move v6, v5

    goto :goto_48

    :cond_47
    move-object v3, v0

    :goto_48
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->access$1000(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v0

    if-nez v0, :cond_51

    const/4 v4, 0x0

    move v0, v6

    goto :goto_52

    :cond_51
    move v0, v6

    :cond_52
    :goto_52
    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_5b

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5e

    :cond_5b
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_5e
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3, v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$502(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {v3, v6}, Lmiui/view/VolumeDialog$VolumeRow;->access$1402(Lmiui/view/VolumeDialog$VolumeRow;I)I

    const v7, 0x110900df

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v3, v7}, Lmiui/view/VolumeDialog$VolumeRow;->access$1302(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->access$1300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    sget-object v8, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I
    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v8, v8, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v7, 0x110900e0

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmiui/widget/SeekBar;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v3, v7}, Lmiui/view/VolumeDialog$VolumeRow;->access$1102(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v3}, Lmiui/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    if-lez v1, :cond_c3

    iget-object v7, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v3, v7}, Lmiui/view/VolumeDialog$VolumeRow;->access$402(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    iget-object v7, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-eqz v4, :cond_bf

    move v5, v6

    :cond_bf
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c7

    :cond_c3
    const/4 v5, 0x0

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v3, v5}, Lmiui/view/VolumeDialog$VolumeRow;->access$402(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    :goto_c7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_cb
    return-void
.end method

.method private prepareForCollapse()V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    .registers 4

    if-nez p1, :cond_19

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {p0, v1}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_8

    :cond_18
    goto :goto_1c

    :cond_19
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    :goto_1c
    return-void
.end method

.method private rescheduleTimeoutH()V
    .registers 6

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->computeTimeoutH()I

    move-result v0

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v2, v1}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lmiui/view/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showH(I)V
    .registers 12

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_ce

    new-instance v0, Lmiui/view/VolumeDialog$CustomDialog;

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v6}, Lmiui/view/VolumeDialog$CustomDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lmiui/view/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    const v6, 0x1040128

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v6, v4}, Lmiui/view/VolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v7, 0x110b003e

    invoke-virtual {v6, v7}, Lmiui/view/VolumeDialog$CustomDialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v7, 0x7e4

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, -0x3

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v7, "Volume Control"

    invoke-virtual {v6, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v7, 0x30

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v8, 0x110f0005

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v7, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v8, 0x110900db

    invoke-virtual {v7, v8}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v8, 0x110900dc

    invoke-virtual {v7, v8}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v8, 0x110900de

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lmiui/view/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v8, 0x110900a7

    invoke-virtual {v7, v8}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmiui/view/RingerModeLayout;

    iput-object v7, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    new-array v7, v3, [I

    fill-array-data v7, :array_1aa

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/animation/LayoutTransition;

    invoke-direct {v7}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v7, p0, Lmiui/view/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v7, 0x5

    invoke-direct {p0, v3, v7, v4}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    const/4 v7, 0x3

    invoke-direct {p0, v7, v7, v4}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    const/4 v7, 0x4

    invoke-direct {p0, v7, v5, v4}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    invoke-direct {p0, v5, v7, v5}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    const/4 v8, 0x6

    invoke-direct {p0, v8, v7, v5}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_ce

    invoke-direct {p0, v8, v1, v5}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    :cond_ce
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v6, 0x11070215

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v6, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x110600f6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v6, :cond_f6

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_f6
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    iget-boolean v2, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-nez v2, :cond_12c

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-eq v2, v3, :cond_10d

    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v2, :cond_112

    :cond_10d
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v2, v1}, Lmiui/view/RingerModeLayout;->setVisibility(I)V

    :cond_112
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v1, p0}, Lmiui/view/RingerModeLayout;->setVolumeDialog(Lmiui/view/VolumeDialog;)V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/view/RingerModeLayout;->setLooper(Landroid/os/Looper;)V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lmiui/view/RingerModeLayout;->setParentDialog(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v1}, Lmiui/view/RingerModeLayout;->init()V

    :cond_12c
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->adjustDialogPosition()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VolumeDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->getMappedStream(I)I

    move-result p1

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v1, v4}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v1, v3}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-boolean v1, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v1, :cond_16d

    iget v1, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-eq v1, p1, :cond_172

    :cond_16d
    iput p1, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->orderVolumeRowsH()V

    :cond_172
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateVolumeRowsH()V

    iget-boolean v1, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    if-nez v1, :cond_19e

    iget-boolean v1, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v1, :cond_181

    goto :goto_19e

    :cond_181
    iput-boolean v5, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    iput-boolean v5, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    iput-boolean v4, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lmiui/view/VolumeDialog$CustomDialog;->show()V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v1, v4}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->notifyVolumeControllerVisible(Z)V

    return-void

    :cond_19e
    :goto_19e
    iget-boolean v1, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v1, :cond_1a8

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    :cond_1a8
    return-void

    nop

    :array_1aa
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private showSafetyWarningH(I)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v0, p1}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->showSafeVolumeDialogByFlags(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_2c

    :cond_c
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_15

    monitor-exit v0

    return-void

    :cond_15
    new-instance v1, Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lmiui/view/VolumeDialog$SafetyWarningDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    new-instance v2, Lmiui/view/VolumeDialog$6;

    invoke-direct {v2, p0}, Lmiui/view/VolumeDialog$6;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    :cond_2c
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    return-void

    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private stateChangedH(II)V
    .registers 6

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->getMappedStream(I)I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_24

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChangedH can not find volume row for stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VolumeDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method private streamDeviceChanged(I)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateDialogBottomMarginH()V
    .registers 7

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_33

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    goto :goto_34

    :cond_33
    const/4 v5, -0x2

    :goto_34
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateExpandButtonH()V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-nez v1, :cond_b

    const/4 v1, 0x4

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_19

    const v1, 0x11070214

    goto :goto_1c

    :cond_19
    const v1, 0x11070216

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void
.end method

.method private updateLayoutDirectionH(I)V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    :cond_7
    return-void
.end method

.method private updateRowsVisibilityByExpandH()V
    .registers 6

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    const/16 v2, 0x8

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v3

    iget v4, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v3, v4, :cond_1e

    const/4 v2, 0x0

    goto :goto_2d

    :cond_1e
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1000(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_2c

    :cond_2a
    const/16 v3, 0x8

    :goto_2c
    move v2, v3

    :cond_2d
    :goto_2d
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRowsVisibilityByExpandH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VolumeDialog"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$400(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_75

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$400(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_75
    goto :goto_6

    :cond_76
    return-void
.end method

.method private updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V
    .registers 15

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v1

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-static {v0, v1, v2}, Lmiui/view/VolumeDialog$StreamState;->getStreamStateByStreamType(Landroid/content/Context;ILmiui/view/VolumeDialog$VolumePanelDelegate;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;
    invoke-static {p1, v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$2102(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/view/VolumeDialog$StreamState;)Lmiui/view/VolumeDialog$StreamState;

    # getter for: Lmiui/view/VolumeDialog$StreamState;->level:I
    invoke-static {v0}, Lmiui/view/VolumeDialog$StreamState;->access$2200(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v1

    if-lez v1, :cond_1f

    # getter for: Lmiui/view/VolumeDialog$StreamState;->level:I
    invoke-static {v0}, Lmiui/view/VolumeDialog$StreamState;->access$2200(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v1

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->lastLevel:I
    invoke-static {p1, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2302(Lmiui/view/VolumeDialog$VolumeRow;I)I

    :cond_1f
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2a

    move v1, v4

    goto :goto_2b

    :cond_2a
    move v1, v3

    :goto_2b
    if-eqz v1, :cond_37

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v2}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getRingerMode()I

    move-result v2

    if-ne v2, v4, :cond_37

    move v2, v4

    goto :goto_38

    :cond_37
    move v2, v3

    :goto_38
    if-eqz v1, :cond_44

    iget-object v5, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v5}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getRingerMode()I

    move-result v5

    if-nez v5, :cond_44

    move v5, v4

    goto :goto_45

    :cond_44
    move v5, v3

    :goto_45
    # getter for: Lmiui/view/VolumeDialog$StreamState;->levelMax:I
    invoke-static {v0}, Lmiui/view/VolumeDialog$StreamState;->access$2400(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x64

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/widget/SeekBar;->getMax()I

    move-result v7

    if-eq v6, v7, :cond_5c

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Lmiui/widget/SeekBar;->setMax(I)V

    :cond_5c
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v7

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v8

    iget v9, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v8, v9, :cond_9a

    iget-object v8, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v8

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v9

    if-nez v9, :cond_81

    iget-object v9, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v9

    if-eqz v9, :cond_81

    const/4 v7, 0x6

    :cond_81
    and-int/lit8 v9, v8, 0x4

    if-nez v9, :cond_89

    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_8a

    :cond_89
    const/4 v7, 0x2

    :cond_8a
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9a

    iget-object v9, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9a

    const/4 v7, 0x7

    :cond_9a
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I
    invoke-static {p1, v7}, Lmiui/view/VolumeDialog$VolumeRow;->access$802(Lmiui/view/VolumeDialog$VolumeRow;I)I

    iget-object v8, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    if-nez v9, :cond_b3

    move v9, v4

    goto :goto_b4

    :cond_b3
    move v9, v3

    :goto_b4
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-ge v10, v11, :cond_d5

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_c7

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    if-nez v10, :cond_d5

    :cond_c7
    # getter for: Lmiui/view/VolumeDialog$StreamState;->muted:Z
    invoke-static {v0}, Lmiui/view/VolumeDialog$StreamState;->access$2500(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v10

    if-eqz v10, :cond_d4

    # getter for: Lmiui/view/VolumeDialog$StreamState;->muteSupported:Z
    invoke-static {v0}, Lmiui/view/VolumeDialog$StreamState;->access$2600(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v10

    if-eqz v10, :cond_d4

    move v3, v4

    :cond_d4
    move v9, v3

    :cond_d5
    sget-object v3, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumeDialog$VolumeIconRes;

    if-eqz v9, :cond_e6

    iget v4, v3, Lmiui/view/VolumeDialog$VolumeIconRes;->mutedIconRes:I

    goto :goto_e8

    :cond_e6
    iget v4, v3, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    :goto_e8
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1400(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    if-eq v4, v10, :cond_f8

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {p1, v4}, Lmiui/view/VolumeDialog$VolumeRow;->access$1402(Lmiui/view/VolumeDialog$VolumeRow;I)I

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_f8
    sget-object v10, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    if-eqz v9, :cond_ff

    iget v10, v10, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;->silentProgress:I

    goto :goto_101

    :cond_ff
    iget v10, v10, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;->normalProgress:I

    :goto_101
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedProgressRes:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v11

    if-eq v10, v11, :cond_11d

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedProgressRes:I
    invoke-static {p1, v10}, Lmiui/view/VolumeDialog$VolumeRow;->access$2702(Lmiui/view/VolumeDialog$VolumeRow;I)I

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v11

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v12

    invoke-virtual {v12}, Lmiui/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11d
    if-eqz v9, :cond_12a

    iget-object v11, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v11

    goto :goto_132

    :cond_12a
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v11

    # getter for: Lmiui/view/VolumeDialog$StreamState;->level:I
    invoke-static {v11}, Lmiui/view/VolumeDialog$StreamState;->access$2200(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v11

    :goto_132
    invoke-direct {p0, p1, v11}, Lmiui/view/VolumeDialog;->updateVolumeRowSliderH(Lmiui/view/VolumeDialog$VolumeRow;I)V

    return-void
.end method

.method private updateVolumeRowSliderH(Lmiui/view/VolumeDialog$VolumeRow;I)V
    .registers 15

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->tracking:Z
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2800(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVolumeRowSliderH start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VolumeDialog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v0

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v3

    invoke-static {v3, v0}, Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v3

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_47

    move v4, v5

    goto :goto_48

    :cond_47
    move v4, v6

    :goto_48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2900(Lmiui/view/VolumeDialog$VolumeRow;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-gez v7, :cond_59

    move v7, v5

    goto :goto_5a

    :cond_59
    move v7, v6

    :goto_5a
    iget-object v8, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v11, 0x3

    invoke-virtual {v8, v11, p1}, Lmiui/view/VolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    iget-boolean v8, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v8, :cond_77

    if-eqz v4, :cond_77

    if-eqz v7, :cond_77

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v1, v11, p1}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2900(Lmiui/view/VolumeDialog$VolumeRow;)J

    move-result-wide v5

    add-long/2addr v5, v9

    invoke-virtual {v1, v2, v5, v6}, Lmiui/view/VolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_77
    if-ne p2, v3, :cond_80

    iget-boolean v8, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v8, :cond_80

    if-eqz v4, :cond_80

    return-void

    :cond_80
    mul-int/lit8 v8, p2, 0x64

    if-eq v0, v8, :cond_133

    iget-boolean v9, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v9, :cond_11f

    if-eqz v4, :cond_11f

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    if-eqz v9, :cond_a1

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_a1

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3100(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v9

    if-ne v9, v8, :cond_a1

    return-void

    :cond_a1
    move v9, v0

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    if-eqz v10, :cond_d5

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_d5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateVolumeRowSliderH cancel animation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->cancel()V

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3100(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v9

    :cond_d5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateVolumeRowSliderH animation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v9, v2, v6

    aput v8, v2, v5

    const-string v5, "progress"

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3002(Lmiui/view/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1, v8}, Lmiui/view/VolumeDialog$VolumeRow;->access$3102(Lmiui/view/VolumeDialog$VolumeRow;I)I

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x50

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_133

    :cond_11f
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz v1, :cond_12c

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_12c
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Lmiui/widget/SeekBar;->setProgress(I)V

    :cond_133
    :goto_133
    return-void
.end method

.method private updateVolumeRowsH()V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {p0, v1}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private vibrateH()V
    .registers 4

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dismiss(J)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    return v0
.end method

.method public masterMuteChanged(I)V
    .registers 2

    return-void
.end method

.method public masterVolumeChanged(I)V
    .registers 2

    return-void
.end method

.method public recheckAll()V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public rescheduleTimeout(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    if-eqz p1, :cond_13

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->sendEmptyMessage(I)Z

    :cond_13
    return-void
.end method

.method public setExpandedH(Z)V
    .registers 6

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->isAttached()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->expandVolumeBar(Z)V

    :cond_15
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    new-instance v1, Lmiui/view/VolumeDialog$3;

    invoke-direct {v1, p0}, Lmiui/view/VolumeDialog$3;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/view/VolumeDialog$H;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    return-void
.end method

.method public show(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showSafeWarningDialog(I)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stateChanged(I)V
    .registers 3

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/view/VolumeDialog;->stateChanged(II)V

    return-void
.end method

.method public stateChanged(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateLayoutDirection(I)V
    .registers 5

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
