.class public Lcom/android/camera/module/loader/camera2/FocusTask;
.super Ljava/lang/Object;
.source "FocusTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/camera2/FocusTask$FocusTriggerBy;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/camera/module/loader/camera2/FocusTask;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FocusTask"

.field public static final TRIGGER_BY_AUTO:I = 0x2

.field public static final TRIGGER_BY_LOCK:I = 0x3

.field public static final TRIGGER_BY_MANUALLY:I = 0x1


# instance fields
.field private mElapsedTime:J

.field private mFocusBy:I

.field private mFocusStartTime:J

.field private mRequestHash:I

.field private mSuccess:Z

.field private mTaskProcessed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/module/loader/camera2/FocusTask$1;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/FocusTask$1;-><init>()V

    sput-object v0, Lcom/android/camera/module/loader/camera2/FocusTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mRequestHash:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mTaskProcessed:Z

    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mFocusBy:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mFocusStartTime:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mRequestHash:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mTaskProcessed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mFocusBy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mFocusStartTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mElapsedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mSuccess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mRequestHash:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mTaskProcessed:Z

    return-void
.end method

.method public static final create(I)Lcom/android/camera/module/loader/camera2/FocusTask;
    .locals 1

    new-instance v0, Lcom/android/camera/module/loader/camera2/FocusTask;

    invoke-direct {v0, p0}, Lcom/android/camera/module/loader/camera2/FocusTask;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getElapsedTime()J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mFocusStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mElapsedTime:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unknown focus time"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFocusTrigger()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mFocusBy:I

    return p0
.end method

.method public isFocusing()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mElapsedTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mSuccess:Z

    return p0
.end method

.method public isTaskProcessed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mTaskProcessed:Z

    return p0
.end method

.method public processResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result p1

    iget v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mRequestHash:I

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mTaskProcessed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/FocusTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processResult the task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mTaskProcessed:Z

    :cond_1
    return-void
.end method

.method public setRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mRequestHash:I

    sget-object p1, Lcom/android/camera/module/loader/camera2/FocusTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequest the task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mRequestHash:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setResult(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mTaskProcessed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/FocusTask;->TAG:Ljava/lang/String;

    const-string v1, "warning. set the focus result before the request is processed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mSuccess:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mFocusStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mElapsedTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mFocusBy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mFocusStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mSuccess:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mRequestHash:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/android/camera/module/loader/camera2/FocusTask;->mTaskProcessed:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
