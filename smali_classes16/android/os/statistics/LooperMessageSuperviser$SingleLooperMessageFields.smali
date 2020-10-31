.class public Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
.super Landroid/os/statistics/MicroscopicEvent$RootEventFields;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperMessageSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleLooperMessageFields"
.end annotation


# static fields
.field private static final FIELD_MESSAGE_NAME:Ljava/lang/String; = "messageName"

.field private static final FIELD_PLAN_UPTIME:Ljava/lang/String; = "planTime"


# instance fields
.field public messageCallback:Ljava/lang/String;

.field public messageName:Ljava/lang/String;

.field public messageTarget:Ljava/lang/String;

.field public messageWhat:I

.field public planUptimeMillis:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTarget:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallback:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTarget:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallback:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    iget-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallback:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_29
    const-string/jumbo v2, "what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_34
    iget-object v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTarget:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, " target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_51
    const-string/jumbo v1, "messageName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "planTime"

    iget-wide v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_5f} :catch_61

    nop

    goto :goto_65

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
