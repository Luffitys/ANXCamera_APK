.class Lcom/miui/internal/analytics/Event$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/analytics/Event;
    .locals 1

    const-string p0, "AnalyticsEvent"

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/Event;

    invoke-virtual {v0, p1}, Lcom/miui/internal/analytics/Event;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "ClassNotFoundException catched when create event from parcel"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "IllegalAccessException catched when create event from parcel"

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "InstantiationException catched when create event from parcel"

    :goto_0
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/Event$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/internal/analytics/Event;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/miui/internal/analytics/Event;
    .locals 0

    new-array p0, p1, [Lcom/miui/internal/analytics/Event;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/internal/analytics/Event$1;->newArray(I)[Lcom/miui/internal/analytics/Event;

    move-result-object p0

    return-object p0
.end method
