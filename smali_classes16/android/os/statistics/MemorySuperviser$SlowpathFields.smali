.class public Landroid/os/statistics/MemorySuperviser$SlowpathFields;
.super Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;
.source "MemorySuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MemorySuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlowpathFields"
.end annotation


# static fields
.field private static final FIELD_ORDER:Ljava/lang/String; = "order"


# instance fields
.field public order:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->version:I

    if-ltz v0, :cond_35

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->pid:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->runningTimeMs:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->runnableTimeMs:I

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->sleepingTimeMs:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->order:I

    :cond_35
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->version:I

    if-ltz v0, :cond_35

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->pid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->threadId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->runningTimeMs:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->runnableTimeMs:I

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->sleepingTimeMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->order:I

    :cond_35
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v0, "order"

    iget v1, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->order:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_10
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->version:I

    if-ltz v0, :cond_27

    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->threadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->runningTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_27
    return-void
.end method
