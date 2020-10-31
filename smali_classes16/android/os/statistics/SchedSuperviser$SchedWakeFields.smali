.class public Landroid/os/statistics/SchedSuperviser$SchedWakeFields;
.super Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;
.source "SchedSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SchedSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedWakeFields"
.end annotation


# static fields
.field private static final FIELD_AWAKEN_PID:Ljava/lang/String; = "awakenPid"

.field private static final FIELD_AWAKEN_THREAD_ID:Ljava/lang/String; = "awakenThreadId"


# instance fields
.field public awakenPid:I

.field public awakenThreadId:I

.field public processName:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_3a

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->pid:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenPid:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenThreadId:I

    :cond_3a
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_3a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->pid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenThreadId:I

    :cond_3a
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v0, "processName"

    iget-object v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "awakenPid"

    iget v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenPid:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "awakenThreadId"

    iget v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenThreadId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->version:I

    if-ltz v0, :cond_31

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_31
    return-void
.end method
