.class public Landroid/os/statistics/SingleJankRecord$JankRecordFields;
.super Landroid/os/statistics/PerfEvent$DetailFields;
.source "SingleJankRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SingleJankRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JankRecordFields"
.end annotation


# static fields
.field private static final FIELD_APP_CAUSE:Ljava/lang/String; = "appCause"

.field private static final FIELD_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final FIELD_BATTERY_TEMP:Ljava/lang/String; = "batteryTemperature"

.field private static final FIELD_CHARGING:Ljava/lang/String; = "isCharging"

.field private static final FIELD_CONCLUSION:Ljava/lang/String; = "conclusion"

.field private static final FIELD_MAX_FRAME_DURATION:Ljava/lang/String; = "maxFrameDuration"

.field private static final FIELD_NUM_FRAMES:Ljava/lang/String; = "numFrames"

.field private static final FIELD_RECEIVED_CURRENT_TIME:Ljava/lang/String; = "receivedCurrentTime"

.field private static final FIELD_RECEIVED_UPTIME:Ljava/lang/String; = "receivedUptime"

.field private static final FIELD_RENDER_THREAD_ID:Ljava/lang/String; = "renderThreadTid"

.field private static final FIELD_SYS_CAUSE:Ljava/lang/String; = "sysCause"

.field private static final FIELD_TOTAL_DURATION:Ljava/lang/String; = "totalDuration"

.field private static final FIELD_WINDOW_NAME:Ljava/lang/String; = "windowName"


# instance fields
.field public appCause:Ljava/lang/String;

.field public batteryLevel:I

.field public batteryTemperature:I

.field public conclusion:Ljava/lang/String;

.field public isCharging:Z

.field public maxFrameDuration:J

.field public numFrames:J

.field public packageName:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public receivedCurrentTimeMillis:J

.field public receivedUptimeMillis:J

.field public renderThreadTid:I

.field public sysCause:Ljava/lang/String;

.field public totalDuration:J

.field public windowName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>(Z)V

    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

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
    .registers 6

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_d

    move-object v2, v0

    goto :goto_e

    :cond_d
    move-object v2, v1

    :goto_e
    move-object v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    move-object v1, v2

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->renderThreadTid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->totalDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->maxFrameDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_54

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    :goto_55
    iput-boolean v3, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->numFrames:J

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v0, "processName"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "packageName"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "renderThreadTid"

    iget v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->renderThreadTid:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "windowName"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appCause"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sysCause"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "conclusion"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "totalDuration"

    iget-wide v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->totalDuration:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "maxFrameDuration"

    iget-wide v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->maxFrameDuration:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "receivedUptime"

    iget-wide v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "receivedCurrentTime"

    iget-wide v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "isCharging"

    iget-boolean v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "batteryLevel"

    iget v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "batteryTemperature"

    iget v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "numFrames"

    iget-wide v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->numFrames:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_7b
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->renderThreadTid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->totalDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->maxFrameDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->numFrames:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
