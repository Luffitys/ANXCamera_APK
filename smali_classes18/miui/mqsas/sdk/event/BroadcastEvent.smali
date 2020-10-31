.class public Lmiui/mqsas/sdk/event/BroadcastEvent;
.super Lmiui/mqsas/sdk/event/ExceptionEvent;
.source "BroadcastEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/BroadcastEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Ljava/lang/String;

.field private mBroadcastReceiver:Ljava/lang/String;

.field private mCallerPackage:Ljava/lang/String;

.field private mCount:I

.field private mDispatchClockTime:J

.field private mEnqueueClockTime:J

.field private mFinishClockTime:J

.field private mIsQueuedWorked:Z

.field private mNumReceivers:I

.field private mReason:Ljava/lang/String;

.field private mTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/mqsas/sdk/event/BroadcastEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/BroadcastEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/BroadcastEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    invoke-direct {p0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->initBroadcastEvent()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_55

    move v0, v2

    goto :goto_56

    :cond_55
    move v0, v1

    :goto_56
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsSystem:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_7e

    move v0, v2

    goto :goto_7f

    :cond_7e
    move v0, v1

    :goto_7f
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mNumReceivers:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_9a

    move v1, v2

    :cond_9a
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsUpload:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/BroadcastEvent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>(Landroid/os/Parcel;)V

    return-void
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

.method private initBroadcastEvent()V
    .registers 5

    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    const-string v1, ""

    iput-object v1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    iput-object v1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    iput-object v1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    iput-object v1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mNumReceivers:I

    return-void
.end method


# virtual methods
.method public addCount()V
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    return-void
.end method

.method public addTotalTime(J)V
    .registers 5

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBrReceiver()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()J
    .registers 3

    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDisTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    return-wide v0
.end method

.method public getEnTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    return-wide v0
.end method

.method public getFinTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    return-wide v0
.end method

.method public getNumReceivers()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mNumReceivers:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    return v0
.end method

.method public initType()V
    .registers 1

    return-void
.end method

.method public isQuWorked()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    return-void
.end method

.method public setBrReceiver(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    return-void
.end method

.method public setCallerPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    return-void
.end method

.method public setDisTime(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    return-void
.end method

.method public setEnTime(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    return-void
.end method

.method public setFinTime(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    return-void
.end method

.method public setNumReceivers(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mNumReceivers:I

    return-void
.end method

.method public setQuWorked(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastEvent { mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mSummary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mDigest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mLogName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mKeyWord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAction= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mEnqueueClockTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    invoke-direct {p0, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mDispatchClockTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    invoke-direct {p0, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mFinishClockTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    invoke-direct {p0, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mBroadcastReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isQueueWorked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCallerPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTotalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

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

    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mNumReceivers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsUpload:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
