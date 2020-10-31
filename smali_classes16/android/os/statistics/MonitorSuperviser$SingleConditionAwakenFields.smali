.class public Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;
.super Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleConditionAwakenFields"
.end annotation


# static fields
.field private static final FIELD_PEER_THREAD_ID:Ljava/lang/String; = "peerThreadId"


# instance fields
.field public peerThreadId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;-><init>()V

    return-void
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;->peerThreadId:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;->peerThreadId:I

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v0, "peerThreadId"

    iget v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;->peerThreadId:I

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

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;->peerThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
