.class public abstract Landroid/os/statistics/PerfEvent;
.super Ljava/lang/Object;
.source "PerfEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfEvent$DetailFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field public beginUptimeMillis:J

.field private details:Landroid/os/statistics/PerfEvent$DetailFields;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public endUptimeMillis:J

.field public eventFlags:I

.field public eventSeq:J

.field public final eventType:I

.field public inclusionId:J

.field private persistentId:J

.field public synchronizationId:J


# direct methods
.method protected constructor <init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    iput-object p2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    return-void
.end method

.method public static generateCoordinationId(I)J
    .registers 4

    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static generateCoordinationId(II)J
    .registers 6

    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final clearDetailFields()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final fillIn(IJJJJJLandroid/os/statistics/JniParcel;[Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/os/statistics/PerfEvent;->inclusionId:J

    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    iget-object v12, v0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    move-object/from16 v13, p12

    invoke-virtual {v12, v13}, Landroid/os/statistics/PerfEvent$DetailFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    iget-object v12, v0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-boolean v12, v12, Landroid/os/statistics/PerfEvent$DetailFields;->needStackTrace:Z

    if-eqz v12, :cond_33

    iget-object v12, v0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v0, p15

    invoke-virtual {v12, v14, v15, v0}, Landroid/os/statistics/PerfEvent$DetailFields;->fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V

    goto :goto_39

    :cond_33
    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v0, p15

    :goto_39
    return-void
.end method

.method public final fillInDetails(Landroid/os/statistics/JniParcel;[Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 6

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-boolean v0, v0, Landroid/os/statistics/PerfEvent$DetailFields;->needStackTrace:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/statistics/PerfEvent$DetailFields;->fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V

    :cond_10
    return-void
.end method

.method public final fillInSeq(J)V
    .registers 3

    iput-wide p1, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    return-void
.end method

.method public final getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    return-object v0
.end method

.method public final getPersistentId()J
    .registers 3

    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->persistentId:J

    return-wide v0
.end method

.method public isMeaningful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final readDetailsFromParcel(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEvent;->inclusionId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public final resolveKernelLazyInfo()V
    .registers 3

    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_f

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0}, Landroid/os/statistics/PerfEvent$DetailFields;->resolveKernelLazyInfo()V

    :cond_f
    return-void
.end method

.method public final resolveLazyInfo()V
    .registers 3

    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_f

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0}, Landroid/os/statistics/PerfEvent$DetailFields;->resolveLazyInfo()V

    :cond_f
    return-void
.end method

.method public final setPersistentId(J)V
    .registers 3

    iput-wide p1, p0, Landroid/os/statistics/PerfEvent;->persistentId:J

    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .registers 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/statistics/PerfEvent;->writeToJson(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public final writeToJson(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    const-string v0, "eventType"

    iget v1, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "eventTypeName"

    iget v1, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-static {v1}, Landroid/os/statistics/PerfEventConstants;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "beginTime"

    iget-wide v1, p0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "endTime"

    iget-wide v1, p0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "occurTime"

    iget-wide v1, p0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "seq"

    iget-wide v1, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_35
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->inclusionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p1, p2}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
