.class public Lcom/miui/internal/analytics/TrackPageViewEvent;
.super Lcom/miui/internal/analytics/Event;
.source ""


# static fields
.field private static final PAGEVIEW_EVENT:Ljava/lang/String; = "_pageview_event_"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    const-string v0, "_pageview_event_"

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    sget-object v0, Lcom/miui/internal/analytics/Event;->sDispatcher:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Dispatchable;

    invoke-interface {v1, p0}, Lcom/miui/internal/analytics/Dispatchable;->dispatchPageView(Lcom/miui/internal/analytics/TrackPageViewEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/internal/analytics/Event;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public writeEvent(Lcom/miui/internal/analytics/Storable;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    const-string v4, ""

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/miui/internal/analytics/Storable;->writeData(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/internal/analytics/Event;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
