.class public Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;
.super Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleConditionWaitFields"
.end annotation


# static fields
.field private static final FIELD_AWAKEN_REASON:Ljava/lang/String; = "awakenReason"


# instance fields
.field public awakenReason:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;-><init>()V

    return-void
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;->awakenReason:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;->awakenReason:I

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string v0, "awakenReason"

    iget v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;->awakenReason:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_f
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;->awakenReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
