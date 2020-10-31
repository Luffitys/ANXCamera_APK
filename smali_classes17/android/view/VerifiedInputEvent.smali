.class public abstract Landroid/view/VerifiedInputEvent;
.super Ljava/lang/Object;
.source "VerifiedInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedInputEvent$VerifiedInputEventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VerifiedInputEvent"

.field protected static final VERIFIED_KEY:I = 0x1

.field protected static final VERIFIED_MOTION:I = 0x2


# instance fields
.field private mDeviceId:I

.field private mDisplayId:I

.field private mEventTimeNanos:J

.field private mSource:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/VerifiedInputEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedInputEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(IIJII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/VerifiedInputEvent;->mType:I

    iput p2, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    iput-wide p3, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    iput p5, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    iput p6, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    if-ne v0, p2, :cond_24

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected input event type token in parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/os/Parcel;)I
    .registers 2

    invoke-static {p0}, Landroid/view/VerifiedInputEvent;->peekInt(Landroid/os/Parcel;)I

    move-result v0

    return v0
.end method

.method private static peekInt(Landroid/os/Parcel;)I
    .registers 3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    return v0
.end method

.method public getEventTimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public getSource()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
