.class public Lmiui/mqsas/sdk/event/ExceptionEvent;
.super Ljava/lang/Object;
.source "ExceptionEvent.java"


# static fields
.field public static final IMPORTANT_PROCESS:I = 0x1

.field public static final NORMAL_PROCESS:I = 0x2

.field public static final SEVERITY_FATAL:I = 0x0

.field public static final SEVERITY_MAJOR:I = 0x1

.field public static final SEVERITY_MINOR:I = 0x3

.field public static final SEVERITY_NORMAL:I = 0x2

.field public static final UNKWOWN_PROCESS:I = -0x1

.field public static final VERY_IMPORTANT_PROCESS:I


# instance fields
.field protected mDetails:Ljava/lang/String;

.field protected mDigest:Ljava/lang/String;

.field public final mImportantProcesses:[Ljava/lang/String;

.field protected mIsSystem:Z

.field protected mIsUpload:Z

.field protected mKeyWord:Ljava/lang/String;

.field protected mLogName:Ljava/lang/String;

.field protected mPackageName:Ljava/lang/String;

.field protected mPid:I

.field protected mProcessName:Ljava/lang/String;

.field protected mSummary:Ljava/lang/String;

.field protected mTimeStamp:J

.field protected mType:I

.field public final mVerytImportantProcesses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "system_server"

    const-string v1, "zygote"

    const-string v2, "zygote64"

    const-string v3, "surfaceflinger"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mVerytImportantProcesses:[Ljava/lang/String;

    const-string v0, "com.android.systemui"

    const-string v1, "com.miui.home"

    const-string v2, "com.android.phone"

    const-string v3, "mediaserver"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mImportantProcesses:[Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->initType()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    return-void
.end method


# virtual methods
.method public getDetails()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSeverity()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getLogName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    return v0
.end method

.method public initType()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    return-void
.end method

.method public isSystem()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    return v0
.end method

.method public isUpload()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    return v0
.end method

.method public judgeProcessLevel()I
    .registers 7

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_46

    :cond_9
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mVerytImportantProcesses:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_27

    aget-object v4, v0, v3

    iget-object v5, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    iget-object v5, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_26

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_26
    :goto_26
    return v2

    :cond_27
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mImportantProcesses:[Ljava/lang/String;

    array-length v1, v0

    :goto_2a
    if-ge v2, v1, :cond_44

    aget-object v3, v0, v2

    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_42

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_42
    :goto_42
    const/4 v0, 0x1

    return v0

    :cond_44
    const/4 v0, 0x2

    return v0

    :cond_46
    :goto_46
    const/4 v0, -0x1

    return v0
.end method

.method public setDetails(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    return-void
.end method

.method public setDigest(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    return-void
.end method

.method public setLogName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setSystem(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    return-void
.end method

.method public setUpload(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    return-void
.end method
