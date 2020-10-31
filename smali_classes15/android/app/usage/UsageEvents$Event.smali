.class public final Landroid/app/usage/UsageEvents$Event;
.super Ljava/lang/Object;
.source "UsageEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEvents$Event$EventFlags;
    }
.end annotation


# static fields
.field public static final ACTIVITY_DESTROYED:I = 0x18

.field public static final ACTIVITY_PAUSED:I = 0x2

.field public static final ACTIVITY_RESUMED:I = 0x1

.field public static final ACTIVITY_STOPPED:I = 0x17

.field public static final CHOOSER_ACTION:I = 0x9

.field public static final CONFIGURATION_CHANGE:I = 0x5

.field public static final CONTINUE_PREVIOUS_DAY:I = 0x4

.field public static final CONTINUING_FOREGROUND_SERVICE:I = 0x15

.field public static final DEVICE_EVENT_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final DEVICE_SHUTDOWN:I = 0x1a

.field public static final DEVICE_STARTUP:I = 0x1b

.field public static final END_OF_DAY:I = 0x3

.field public static final FLAG_IS_PACKAGE_INSTANT_APP:I = 0x1

.field public static final FLUSH_TO_DISK:I = 0x19

.field public static final FOREGROUND_SERVICE_START:I = 0x13

.field public static final FOREGROUND_SERVICE_STOP:I = 0x14

.field public static final KEYGUARD_HIDDEN:I = 0x12

.field public static final KEYGUARD_SHOWN:I = 0x11

.field public static final LOCUS_ID_SET:I = 0x1e

.field public static final MAX_EVENT_TYPE:I = 0x1e

.field public static final MIUI_INPUT_HIDDEN:I = 0x2712

.field public static final MIUI_INPUT_SHOWN:I = 0x2711

.field public static final MOVE_TO_BACKGROUND:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOVE_TO_FOREGROUND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NONE:I = 0x0

.field public static final NOTIFICATION_INTERRUPTION:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NOTIFICATION_SEEN:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ROLLOVER_FOREGROUND_SERVICE:I = 0x16

.field public static final SCREEN_INTERACTIVE:I = 0xf

.field public static final SCREEN_NON_INTERACTIVE:I = 0x10

.field public static final SHORTCUT_INVOCATION:I = 0x8

.field public static final SLICE_PINNED:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SLICE_PINNED_PRIV:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STANDBY_BUCKET_CHANGED:I = 0xb

.field public static final SYSTEM_INTERACTION:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final UNASSIGNED_TOKEN:I = -0x1

.field public static final USER_INTERACTION:I = 0x7

.field public static final USER_STOPPED:I = 0x1d

.field public static final USER_UNLOCKED:I = 0x1c

.field public static final VALID_FLAG_BITS:I = 0x1


# instance fields
.field public mAction:Ljava/lang/String;

.field public mBucketAndReason:I

.field public mClass:Ljava/lang/String;

.field public mClassToken:I

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mContentAnnotations:[Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mEventType:I

.field public mFlags:I

.field public mInstanceId:I

.field public mLocusId:Ljava/lang/String;

.field public mLocusIdToken:I

.field public mNotificationChannelId:Ljava/lang/String;

.field public mNotificationChannelIdToken:I

.field public mPackage:Ljava/lang/String;

.field public mPackageToken:I

.field public mShortcutId:Ljava/lang/String;

.field public mShortcutIdToken:I

.field public mTaskRootClass:Ljava/lang/String;

.field public mTaskRootClassToken:I

.field public mTaskRootPackage:Ljava/lang/String;

.field public mTaskRootPackageToken:I

.field public mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    iput p1, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iput-wide p2, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/UsageEvents$Event;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents$Event;->copyFrom(Landroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method static synthetic access$000(Landroid/app/usage/UsageEvents$Event;Landroid/app/usage/UsageEvents$Event;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents$Event;->copyFrom(Landroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method private copyFrom(Landroid/app/usage/UsageEvents$Event;)V
    .registers 4

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppStandbyBucket()I
    .registers 3

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getEventType()I
    .registers 2

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    return v0
.end method

.method public getInstanceId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    return v0
.end method

.method public getLocusId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationChannelId()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;
    .registers 3

    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    const-string v1, "android.instant_app"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v1, "android.instant_class"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedNotificationEvent()Landroid/app/usage/UsageEvents$Event;
    .registers 3

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    const-string/jumbo v1, "unknown_channel_id"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getStandbyBucket()I
    .registers 3

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getStandbyReason()I
    .registers 3

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getTaskRootClassName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskRootPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-wide v0
.end method

.method public isInstantApp()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method
