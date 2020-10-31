.class Lcom/miui/internal/analytics/Event$1;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/internal/analytics/Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/analytics/Event;
    .registers 6

    const-string v0, "AnalyticsEvent"

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :try_start_6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/Event;

    invoke-virtual {v2, p1}, Lcom/miui/internal/analytics/Event;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_13
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_13} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_13} :catch_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_13} :catch_14

    return-object v2

    :catch_14
    move-exception v2

    const-string v3, "ClassNotFoundException catched when create event from parcel"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :catch_1b
    move-exception v2

    const-string v3, "IllegalAccessException catched when create event from parcel"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_22
    move-exception v2

    const-string v3, "InstantiationException catched when create event from parcel"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    nop

    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/Event$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/analytics/Event;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/internal/analytics/Event;
    .registers 3

    new-array v0, p1, [Lcom/miui/internal/analytics/Event;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/Event$1;->newArray(I)[Lcom/miui/internal/analytics/Event;

    move-result-object p1

    return-object p1
.end method
