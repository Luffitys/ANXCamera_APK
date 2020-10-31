.class public Lcom/miui/internal/analytics/LogEvent;
.super Lcom/miui/internal/analytics/Event;
.source "LogEvent.java"


# instance fields
.field private mErrorClass:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/miui/internal/analytics/Event;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/analytics/LogEvent;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mType:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/miui/internal/analytics/LogEvent;->mEventId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    return-void
.end method

.method private buildParam()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#ITEMSPLITTER#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseParam(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "#ITEMSPLITTER#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_19

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    :cond_19
    return-void
.end method


# virtual methods
.method public dispatch()V
    .registers 3

    sget-object v0, Lcom/miui/internal/analytics/LogEvent;->sDispatcher:Ljava/util/List;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/miui/internal/analytics/LogEvent;->sDispatcher:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Dispatchable;

    invoke-interface {v1, p0}, Lcom/miui/internal/analytics/Dispatchable;->dispatchLog(Lcom/miui/internal/analytics/LogEvent;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public getErrorClass()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/miui/internal/analytics/Event;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/miui/internal/analytics/Event;->restore(Landroid/database/Cursor;)V

    if-eqz p1, :cond_12

    const-string v0, "param"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/analytics/LogEvent;->parseParam(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public writeEvent(Lcom/miui/internal/analytics/Storable;)V
    .registers 9

    if-eqz p1, :cond_28

    iget-object v1, p0, Lcom/miui/internal/analytics/LogEvent;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/LogEvent;->mType:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/miui/internal/analytics/LogEvent;->mEventId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/internal/analytics/LogEvent;->buildParam()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/miui/internal/analytics/LogEvent;->mTrackTime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/miui/internal/analytics/Storable;->writeData(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/miui/internal/analytics/Event;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/internal/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
