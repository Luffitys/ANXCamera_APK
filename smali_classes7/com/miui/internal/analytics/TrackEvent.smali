.class public Lcom/miui/internal/analytics/TrackEvent;
.super Lcom/miui/internal/analytics/Event;
.source ""


# instance fields
.field private mParam:Ljava/util/Map;

.field private mValue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/analytics/TrackEvent;->mParam:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/analytics/TrackEvent;->mValue:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/internal/analytics/TrackEvent;->mParam:Ljava/util/Map;

    iput-wide p4, p0, Lcom/miui/internal/analytics/TrackEvent;->mValue:J

    return-void
.end method

.method private buildParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#ITEMSPLITTER#"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private parseParam(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/TrackEvent;->mParam:Ljava/util/Map;

    const-string v0, "#ITEMSPLITTER#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/analytics/TrackEvent;->mParam:Ljava/util/Map;

    aget-object v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
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

    invoke-interface {v1, p0}, Lcom/miui/internal/analytics/Dispatchable;->dispatchEvent(Lcom/miui/internal/analytics/TrackEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getParam()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/analytics/TrackEvent;->mParam:Ljava/util/Map;

    return-object p0
.end method

.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/internal/analytics/TrackEvent;->mValue:J

    return-wide v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/internal/analytics/Event;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/analytics/TrackEvent;->parseParam(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/analytics/TrackEvent;->mValue:J

    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/internal/analytics/Event;->restore(Landroid/database/Cursor;)V

    if-eqz p1, :cond_0

    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/analytics/TrackEvent;->mValue:J

    const-string v0, "param"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/TrackEvent;->parseParam(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeEvent(Lcom/miui/internal/analytics/Storable;)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/internal/analytics/TrackEvent;->mParam:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/miui/internal/analytics/TrackEvent;->buildParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/miui/internal/analytics/TrackEvent;->mValue:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p1

    move-object v5, v6

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/miui/internal/analytics/Storable;->writeData(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/miui/internal/analytics/Event;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/miui/internal/analytics/TrackEvent;->mParam:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/miui/internal/analytics/TrackEvent;->buildParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/internal/analytics/TrackEvent;->mValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
