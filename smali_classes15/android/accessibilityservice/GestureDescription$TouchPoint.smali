.class public Landroid/accessibilityservice/GestureDescription$TouchPoint;
.super Ljava/lang/Object;
.source "GestureDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchPoint"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_IS_END_OF_PATH:I = 0x2

.field private static final FLAG_IS_START_OF_PATH:I = 0x1


# instance fields
.field public mContinuedStrokeId:I

.field public mIsEndOfPath:Z

.field public mIsStartOfPath:Z

.field public mStrokeId:I

.field public mX:F

.field public mY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    iput-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_23

    move v2, v3

    :cond_23
    iput-boolean v2, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .registers 3

    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    iget-boolean v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    iput-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    iget-boolean v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    iput-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchPoint{mStrokeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContinuedStrokeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsStartOfPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEndOfPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x2

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
