.class public Landroid/os/statistics/PerfEvent$DetailFields;
.super Ljava/lang/Object;
.source "PerfEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailFields"
.end annotation


# instance fields
.field public final needStackTrace:Z

.field public pid:I


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/os/statistics/PerfEvent$DetailFields;->needStackTrace:Z

    return-void
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEvent$DetailFields;->pid:I

    return-void
.end method

.method public fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 4

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEvent$DetailFields;->pid:I

    return-void
.end method

.method public resolveKernelLazyInfo()V
    .registers 1

    return-void
.end method

.method public resolveLazyInfo()V
    .registers 1

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 4

    :try_start_0
    const-string/jumbo v0, "pid"

    iget v1, p0, Landroid/os/statistics/PerfEvent$DetailFields;->pid:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/os/statistics/PerfEvent$DetailFields;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
