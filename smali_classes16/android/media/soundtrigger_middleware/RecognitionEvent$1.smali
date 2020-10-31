.class Landroid/media/soundtrigger_middleware/RecognitionEvent$1;
.super Ljava/lang/Object;
.source "RecognitionEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/RecognitionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/soundtrigger_middleware/RecognitionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/soundtrigger_middleware/RecognitionEvent;
    .registers 3

    new-instance v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/RecognitionEvent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/soundtrigger_middleware/RecognitionEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/RecognitionEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/soundtrigger_middleware/RecognitionEvent;
    .registers 3

    new-array v0, p1, [Landroid/media/soundtrigger_middleware/RecognitionEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/soundtrigger_middleware/RecognitionEvent$1;->newArray(I)[Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object p1

    return-object p1
.end method
