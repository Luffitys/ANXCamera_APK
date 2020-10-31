.class public Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;
.super Landroid/os/statistics/PerfEvent$DetailFields;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderStarvationDetails"
.end annotation


# static fields
.field private static final FIELD_MAX_THREADS:Ljava/lang/String; = "maxThreads"


# instance fields
.field public maxThreads:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;->maxThreads:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;->maxThreads:I

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v0, "maxThreads"

    iget v1, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;->maxThreads:I

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

    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;->maxThreads:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
