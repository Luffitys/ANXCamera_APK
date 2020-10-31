.class public Lmiui/slide/SlideConfig$TouchEventConfig;
.super Ljava/lang/Object;
.source "SlideConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchEventConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/slide/SlideConfig$TouchEventConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPositionBetaX:I

.field public mPositionBetaY:I

.field public mPositionX:I

.field public mPositionY:I

.field public mWaitingTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/slide/SlideConfig$TouchEventConfig$1;

    invoke-direct {v0}, Lmiui/slide/SlideConfig$TouchEventConfig$1;-><init>()V

    sput-object v0, Lmiui/slide/SlideConfig$TouchEventConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionX:I

    iput p2, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionY:I

    iput p3, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaX:I

    iput p4, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaY:I

    iput p5, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mWaitingTime:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mWaitingTime:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/slide/SlideConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/slide/SlideConfig$TouchEventConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lmiui/slide/SlideConfig$TouchEventConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionX:I

    iput v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionX:I

    iget v0, p1, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionY:I

    iput v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionY:I

    iget v0, p1, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaX:I

    iput v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaX:I

    iget v0, p1, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaY:I

    iput v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaY:I

    iget v0, p1, Lmiui/slide/SlideConfig$TouchEventConfig;->mWaitingTime:I

    iput v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mWaitingTime:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchEventConfig{, mPositionX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPositionY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPositionBetaX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPositionBetaY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaitingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mWaitingTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/slide/SlideConfig$TouchEventConfig;->mWaitingTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
