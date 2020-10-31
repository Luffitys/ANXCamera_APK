.class public Landroid/media/soundtrigger_middleware/RecognitionEvent;
.super Ljava/lang/Object;
.source "RecognitionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/soundtrigger_middleware/RecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioConfig:Landroid/media/audio/common/AudioConfig;

.field public captureAvailable:Z

.field public captureDelayMs:I

.field public capturePreambleMs:I

.field public captureSession:I

.field public data:[B

.field public status:I

.field public triggerInData:Z

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/soundtrigger_middleware/RecognitionEvent$1;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/RecognitionEvent$1;-><init>()V

    sput-object v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_d6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1e

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_1e
    :try_start_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_d6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_31

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    move v2, v3

    goto :goto_3c

    :cond_3b
    move v2, v4

    :goto_3c
    iput-boolean v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_d6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_4b

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_4b
    :try_start_4b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureSession:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_d6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureDelayMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_d6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_71

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_71
    :try_start_71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->capturePreambleMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7b
    .catchall {:try_start_71 .. :try_end_7b} :catchall_d6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_84

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_84
    :try_start_84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8b

    goto :goto_8c

    :cond_8b
    move v3, v4

    :goto_8c
    iput-boolean v3, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->triggerInData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_d6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9b

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_9b
    :try_start_9b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ac

    sget-object v2, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioConfig;

    iput-object v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    goto :goto_af

    :cond_ac
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    :goto_af
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b3
    .catchall {:try_start_9b .. :try_end_b3} :catchall_d6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_bc

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_bc
    :try_start_bc
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_d6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cf

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_cf
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :catchall_d6
    move-exception v2

    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->type:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureAvailable:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureSession:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureDelayMs:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->capturePreambleMs:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->triggerInData:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    if-eqz v2, :cond_39

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    invoke-virtual {v2, p1, v1}, Landroid/media/audio/common/AudioConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3c

    :cond_39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3c
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
