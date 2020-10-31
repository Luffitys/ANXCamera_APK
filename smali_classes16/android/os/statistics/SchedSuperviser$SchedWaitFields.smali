.class public Landroid/os/statistics/SchedSuperviser$SchedWaitFields;
.super Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;
.source "SchedSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SchedSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedWaitFields"
.end annotation


# static fields
.field private static final FIELD_INTERRUPTIBLE:Ljava/lang/String; = "interruptible"

.field private static final FIELD_WAIT_REASON:Ljava/lang/String; = "waitReason"

.field private static final FIELD_WAKING_PID:Ljava/lang/String; = "wakingPid"

.field private static final FIELD_WAKING_THREAD_ID:Ljava/lang/String; = "wakingThreadId"

.field private static final FIELD_WCHAN:Ljava/lang/String; = "wchan"


# instance fields
.field public interruptible:Z

.field public version:I

.field public waitReason:Ljava/lang/String;

.field public wakingPid:I

.field public wakingThreadId:I

.field public wchan:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;-><init>(Z)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingPid:I

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingThreadId:I

    return-void
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->version:I

    if-ltz v0, :cond_45

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->pid:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingPid:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingThreadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wchan:J

    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->waitReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    iput-boolean v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->interruptible:Z

    :cond_45
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->version:I

    if-ltz v0, :cond_45

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->pid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->threadId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingThreadId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wchan:J

    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->waitReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    iput-boolean v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->interruptible:Z

    :cond_45
    return-void
.end method

.method public resolveKernelLazyInfo()V
    .registers 3

    iget-wide v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wchan:J

    invoke-static {v0, v1}, Landroid/os/statistics/OsUtils;->translateKernelAddress(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->waitReason:Ljava/lang/String;

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v0, "wakingPid"

    iget v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingPid:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "wakingThreadId"

    iget v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingThreadId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "wchan"

    iget-wide v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wchan:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "waitReason"

    iget-object v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->waitReason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "interruptible"

    iget-boolean v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->interruptible:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2f
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->version:I

    if-ltz v0, :cond_31

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->threadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wchan:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->interruptible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_31
    return-void
.end method
