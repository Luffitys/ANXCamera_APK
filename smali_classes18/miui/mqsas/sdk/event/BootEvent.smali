.class public Lmiui/mqsas/sdk/event/BootEvent;
.super Ljava/lang/Object;
.source "BootEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_BOOT_AMS_READY:Ljava/lang/String; = "AmsReady"

.field public static final ACTION_BOOT_BOOT_COMPLETE:Ljava/lang/String; = "BootComplete"

.field public static final ACTION_BOOT_DEXOPT:Ljava/lang/String; = "Dexopt"

.field public static final ACTION_BOOT_PMS_SCAN:Ljava/lang/String; = "PmsScan"

.field public static final ACTION_BOOT_SYSTEM_RUN:Ljava/lang/String; = "SystemRun"

.field public static final ACTION_BOOT_UI_READY:Ljava/lang/String; = "UIReady"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/BootEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BOOT_FIRST:I = 0x2

.field public static final TYPE_BOOT_NORMAL:I = 0x1

.field public static final TYPE_BOOT_OTA:I = 0x3


# instance fields
.field private mBootType:I

.field private mDetailAmsReady:Ljava/lang/String;

.field private mDetailBootComplete:Ljava/lang/String;

.field private mDetailDexopt:Ljava/lang/String;

.field private mDetailPmsScan:Ljava/lang/String;

.field private mDetailSystemRun:Ljava/lang/String;

.field private mDetailUIReady:Ljava/lang/String;

.field private mMiuiVersion:Ljava/lang/String;

.field private mPeriodAmsReady:J

.field private mPeriodBootComplete:J

.field private mPeriodDexopt:J

.field private mPeriodPmsScan:J

.field private mPeriodSystemRun:J

.field private mPeriodUIReady:J

.field private mTimeStamp:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/mqsas/sdk/event/BootEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/BootEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/BootEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mType:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v3, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    iput v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/BootEvent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/BootEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static bootTypeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const-string v0, "Unknown"

    return-object v0

    :cond_c
    const-string v0, "OtaBoot"

    return-object v0

    :cond_f
    const-string v0, "FirstBoot"

    return-object v0

    :cond_12
    const-string v0, "NormalBoot"

    return-object v0
.end method

.method private formatTime(J)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBootType()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    return v0
.end method

.method public getDetailAmsReady()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailBootComplete()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailDexopt()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailPmsScan()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailSystemRun()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailUIReady()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    return-object v0
.end method

.method public getMiuiVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodAmsReady()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    return-wide v0
.end method

.method public getPeriodBootComplete()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    return-wide v0
.end method

.method public getPeriodDexopt()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    return-wide v0
.end method

.method public getPeriodPmsScan()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    return-wide v0
.end method

.method public getPeriodSystemRun()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    return-wide v0
.end method

.method public getPeriodUIReady()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mType:I

    return v0
.end method

.method public setBootType(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    return-void
.end method

.method public setDetailAmsReady(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    return-void
.end method

.method public setDetailBootComplete(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    return-void
.end method

.method public setDetailDexopt(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    return-void
.end method

.method public setDetailPmsScan(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    return-void
.end method

.method public setDetailSystemRun(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    return-void
.end method

.method public setDetailUIReady(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    return-void
.end method

.method public setMiuiVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    return-void
.end method

.method public setPeriodAmsReady(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    return-void
.end method

.method public setPeriodBootComplete(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    return-void
.end method

.method public setPeriodDexopt(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    return-void
.end method

.method public setPeriodPmsScan(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    return-void
.end method

.method public setPeriodSystemRun(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    return-void
.end method

.method public setPeriodUIReady(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BootEvent;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BootEvent {mTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    invoke-direct {p0, v2, v3}, Lmiui/mqsas/sdk/event/BootEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mBootType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    invoke-static {v2}, Lmiui/mqsas/sdk/event/BootEvent;->bootTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mPeriod"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SystemRun"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PmsScan"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Dexopt"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AmsReady"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "UIReady"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BootComplete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ",mDetail"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mMiuiVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mBootType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodSystemRun:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodPmsScan:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodDexopt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodAmsReady:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodUIReady:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mPeriodBootComplete:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailSystemRun:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailPmsScan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailDexopt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailAmsReady:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailUIReady:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mDetailBootComplete:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BootEvent;->mMiuiVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
