.class public Lmiui/mqsas/sdk/event/BrightnessEvent;
.super Ljava/lang/Object;
.source "BrightnessEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/BrightnessEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_BRIGHTNESS_MODE_CHANGED:I = 0x2

.field public static final EVENT_OTHER_CHANGED_BRIGHTNESS:I = 0x1

.field public static final EVENT_USER_CHANGED_BRIGHTNESS:I = 0x0

.field public static final EVENT_WINDOW_CHANGED_BRIGHTNESS:I = 0x3


# instance fields
.field private ambient_lux:F

.field private battery_level:I

.field private extra:Ljava/lang/String;

.field private gpu_load:I

.field private ime_md5:I

.field private last_observed_lux:F

.field private new_value:F

.field private old_value:F

.field private orientation:I

.field private ring_lux:Ljava/lang/String;

.field private screen_brightness:I

.field private spline:Ljava/lang/String;

.field private time_stamp:J

.field private top_package:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/mqsas/sdk/event/BrightnessEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/BrightnessEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/BrightnessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->old_value:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->new_value:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ambient_lux:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->last_observed_lux:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->screen_brightness:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->orientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->spline:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ring_lux:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->top_package:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ime_md5:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->gpu_load:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->battery_level:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->time_stamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->extra:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/BrightnessEvent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/BrightnessEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static timestamp2String(J)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:sss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAmbientLux()F
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ambient_lux:F

    return v0
.end method

.method public getBatteryLevel()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->battery_level:I

    return v0
.end method

.method public getEventType()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->type:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getForegroundPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->top_package:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuLoad()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->gpu_load:I

    return v0
.end method

.method public getLastObservedLux()F
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->last_observed_lux:F

    return v0
.end method

.method public getNewValue()F
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->new_value:F

    return v0
.end method

.method public getOldValue()F
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->old_value:F

    return v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->orientation:I

    return v0
.end method

.method public getRingLux()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ring_lux:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenAutoBrightness()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ime_md5:I

    return v0
.end method

.method public getScreenBrightness()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->screen_brightness:I

    return v0
.end method

.method public getSpline()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->spline:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->time_stamp:J

    return-wide v0
.end method

.method public setAmbientLux(F)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ambient_lux:F

    return-void
.end method

.method public setBatteryLevel(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->battery_level:I

    return-void
.end method

.method public setEventType(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->type:I

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->extra:Ljava/lang/String;

    return-void
.end method

.method public setForegroundPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->top_package:Ljava/lang/String;

    return-void
.end method

.method public setGpuLoad(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->gpu_load:I

    return-void
.end method

.method public setLastObservedLux(F)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->last_observed_lux:F

    return-void
.end method

.method public setNewValue(F)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->new_value:F

    return-void
.end method

.method public setOldValue(F)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->old_value:F

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->orientation:I

    return-void
.end method

.method public setRingLux(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ring_lux:Ljava/lang/String;

    return-void
.end method

.method public setScreenAutoBrightness(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ime_md5:I

    return-void
.end method

.method public setScreenBrightness(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->screen_brightness:I

    return-void
.end method

.method public setSpline(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->spline:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->time_stamp:J

    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->old_value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->new_value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ambient_lux:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->last_observed_lux:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->screen_brightness:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->orientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ime_md5:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->top_package:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->gpu_load:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->battery_level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->time_stamp:J

    invoke-static {v1, v2}, Lmiui/mqsas/sdk/event/BrightnessEvent;->timestamp2String(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->old_value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->new_value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ambient_lux:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->last_observed_lux:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->screen_brightness:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->orientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ime_md5:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->top_package:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->gpu_load:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->battery_level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->spline:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ring_lux:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->old_value:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->new_value:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ambient_lux:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->last_observed_lux:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->screen_brightness:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->spline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ring_lux:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->top_package:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->ime_md5:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->gpu_load:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->battery_level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->time_stamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/BrightnessEvent;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
