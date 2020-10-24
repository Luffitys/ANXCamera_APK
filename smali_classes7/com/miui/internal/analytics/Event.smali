.class public abstract Lcom/miui/internal/analytics/Event;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field protected static final SPLITTER:Ljava/lang/String; = "#ITEMSPLITTER#"

.field private static final TAG:Ljava/lang/String; = "AnalyticsEvent"

.field protected static sDispatcher:Ljava/util/List;


# instance fields
.field protected mEventId:Ljava/lang/String;

.field protected mPackageName:Ljava/lang/String;

.field protected mPolicy:Ljava/lang/String;

.field protected mTrackTime:J

.field protected mType:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/internal/analytics/Event$1;

    invoke-direct {v0}, Lcom/miui/internal/analytics/Event$1;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/analytics/Event;->setTime(J)V

    return-void
.end method

.method public static setDispatcher(Ljava/util/List;)V
    .locals 0

    sput-object p0, Lcom/miui/internal/analytics/Event;->sDispatcher:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract dispatch()V
.end method

.method public getEventId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/analytics/Event;->mPolicy:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    return-wide v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    return-object p0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mPolicy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "package"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    const-string v0, "event_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    const-string v0, "time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    :cond_0
    return-void
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/analytics/Event;->mPolicy:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    return-void
.end method

.method public abstract writeEvent(Lcom/miui/internal/analytics/Storable;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/internal/analytics/Event;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/internal/analytics/Event;->mType:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/miui/internal/analytics/Event;->mEventId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/internal/analytics/Event;->mPolicy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/internal/analytics/Event;->mTrackTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
