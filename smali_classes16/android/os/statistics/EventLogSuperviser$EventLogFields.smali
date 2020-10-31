.class public Landroid/os/statistics/EventLogSuperviser$EventLogFields;
.super Landroid/os/statistics/PerfEvent$DetailFields;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/EventLogSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventLogFields"
.end annotation


# static fields
.field private static final FIELD_EVENT_LOG_TAG_ID:Ljava/lang/String; = "eventLogTagId"

.field private static final FIELD_EVENT_LOG_TAG_NAME:Ljava/lang/String; = "eventLogTagName"

.field private static final FIELD_EVENT_LOG_TIME:Ljava/lang/String; = "eventLogTime"

.field private static final FIELD_EVENT_LOG_VALUE_STRS:Ljava/lang/String; = "eventlogValues"


# instance fields
.field public currentTimeMillis:J

.field public eventLogTagId:I

.field public eventLogTagName:Ljava/lang/String;

.field public eventLogValueObject:Ljava/lang/Object;

.field public eventLogValueStrs:[Ljava/lang/String;


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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->currentTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    if-nez v0, :cond_1b

    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    :cond_1b
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    if-nez v0, :cond_29

    # getter for: Landroid/os/statistics/EventLogSuperviser;->emptyEventValueStrs:[Ljava/lang/String;
    invoke-static {}, Landroid/os/statistics/EventLogSuperviser;->access$000()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    return-void
.end method

.method public resolveLazyInfo()V
    .registers 5

    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    if-eqz v0, :cond_2e

    invoke-static {v0}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    :cond_2e
    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    if-eqz v0, :cond_5c

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_4f

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_3e
    array-length v2, v0

    if-ge v1, v2, :cond_4e

    iget-object v2, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_4e
    goto :goto_62

    :cond_4f
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_62

    :cond_5c
    # getter for: Landroid/os/statistics/EventLogSuperviser;->emptyEventValueStrs:[Ljava/lang/String;
    invoke-static {}, Landroid/os/statistics/EventLogSuperviser;->access$000()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    :goto_62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string v0, "eventLogTime"

    iget-wide v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->currentTimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "eventLogTagId"

    iget v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "eventLogTagName"

    iget-object v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    if-eqz v0, :cond_28

    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string v1, "eventlogValues"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_28} :catch_29

    :cond_28
    goto :goto_2d

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2d
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->currentTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    return-void
.end method
