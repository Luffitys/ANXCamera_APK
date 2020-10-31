.class public final Landroid/os/connectivity/WifiActivityEnergyInfo;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/connectivity/WifiActivityEnergyInfo$StackState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/WifiActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STACK_STATE_INVALID:I = 0x0

.field public static final STACK_STATE_STATE_ACTIVE:I = 0x1

.field public static final STACK_STATE_STATE_IDLE:I = 0x3

.field public static final STACK_STATE_STATE_SCANNING:I = 0x2


# instance fields
.field private final mControllerEnergyUsedMicroJoules:J

.field private final mControllerIdleDurationMillis:J

.field private final mControllerRxDurationMillis:J

.field private final mControllerScanDurationMillis:J

.field private final mControllerTxDurationMillis:J

.field private final mStackState:I

.field private final mTimeSinceBootMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/connectivity/WifiActivityEnergyInfo$1;

    invoke-direct {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIJJJJ)V
    .registers 28

    nop

    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    move-wide/from16 v4, p10

    invoke-static/range {v0 .. v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->calculateEnergyMicroJoules(JJJ)J

    move-result-wide v14

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-direct/range {v2 .. v15}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    return-void
.end method

.method public constructor <init>(JIJJJJJ)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    iput p3, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    iput-wide p4, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    iput-wide p6, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    iput-wide p8, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    iput-wide p10, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    iput-wide p12, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerEnergyUsedMicroJoules:J

    return-void
.end method

.method private static calculateEnergyMicroJoules(JJJ)J
    .registers 26

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    if-nez v0, :cond_d

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_d
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "wifi.controller.idle"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    const-string/jumbo v4, "wifi.controller.rx"

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-string/jumbo v6, "wifi.controller.tx"

    invoke-virtual {v1, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    const-string/jumbo v8, "wifi.controller.voltage"

    invoke-virtual {v1, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    move-wide/from16 v10, p0

    long-to-double v12, v10

    mul-double/2addr v12, v6

    move-wide/from16 v14, p2

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    long-to-double v0, v14

    mul-double/2addr v0, v4

    add-double/2addr v12, v0

    move-wide/from16 v0, p4

    move-wide/from16 v18, v4

    long-to-double v4, v0

    mul-double/2addr v4, v2

    add-double/2addr v12, v4

    mul-double/2addr v12, v8

    double-to-long v4, v12

    return-wide v4
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getControllerEnergyUsedMicroJoules()J
    .registers 3

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerEnergyUsedMicroJoules:J

    return-wide v0
.end method

.method public getControllerIdleDurationMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    return-wide v0
.end method

.method public getControllerRxDurationMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    return-wide v0
.end method

.method public getControllerScanDurationMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    return-wide v0
.end method

.method public getControllerTxDurationMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    return-wide v0
.end method

.method public getStackState()I
    .registers 2

    iget v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    return v0
.end method

.method public getTimeSinceBootMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    return-wide v0
.end method

.method public isValid()Z
    .registers 5

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiActivityEnergyInfo{ mTimeSinceBootMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mStackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mControllerTxDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerRxDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerScanDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerIdleDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mControllerEnergyUsedMicroJoules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerEnergyUsedMicroJoules:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
