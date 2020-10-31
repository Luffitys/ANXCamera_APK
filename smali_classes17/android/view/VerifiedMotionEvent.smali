.class public final Landroid/view/VerifiedMotionEvent;
.super Landroid/view/VerifiedInputEvent;
.source "VerifiedMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedMotionEvent$MotionEventAction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedMotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VerifiedMotionEvent"


# instance fields
.field private mActionMasked:I

.field private mButtonState:I

.field private mDownTimeNanos:J

.field private mFlags:I

.field private mMetaState:I

.field private mRawX:F

.field private mRawY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/VerifiedMotionEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedMotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJIIFFIJIII)V
    .registers 26

    move-object v7, p0

    move/from16 v8, p8

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/VerifiedInputEvent;-><init>(IIJII)V

    move/from16 v0, p6

    iput v0, v7, Landroid/view/VerifiedMotionEvent;->mRawX:F

    move/from16 v1, p7

    iput v1, v7, Landroid/view/VerifiedMotionEvent;->mRawY:F

    iput v8, v7, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    const-class v2, Landroid/view/VerifiedMotionEvent$MotionEventAction;

    const/4 v3, 0x0

    invoke-static {v2, v3, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    move-wide/from16 v4, p9

    iput-wide v4, v7, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    const-class v2, Landroid/annotation/SuppressLint;

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "value"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "MethodNameUnits"

    aput-object v11, v9, v10

    invoke-static {v2, v3, v6, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;[Ljava/lang/Object;)V

    move/from16 v2, p11

    iput v2, v7, Landroid/view/VerifiedMotionEvent;->mFlags:I

    move/from16 v3, p12

    iput v3, v7, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    move/from16 v6, p13

    iput v6, v7, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 16

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/view/VerifiedInputEvent;-><init>(Landroid/os/Parcel;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v1, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    iput v2, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    iput v3, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    const-class v9, Landroid/view/VerifiedMotionEvent$MotionEventAction;

    const/4 v10, 0x0

    invoke-static {v9, v10, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-wide v4, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    const-class v9, Landroid/annotation/SuppressLint;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "value"

    aput-object v13, v0, v12

    const/4 v12, 0x1

    const-string v13, "MethodNameUnits"

    aput-object v13, v0, v12

    invoke-static {v9, v10, v11, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;[Ljava/lang/Object;)V

    iput v6, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    iput v7, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    iput v8, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_73

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_73

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/VerifiedMotionEvent;

    nop

    invoke-virtual {p0}, Landroid/view/VerifiedMotionEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedMotionEvent;->getDeviceId()I

    move-result v4

    if-ne v3, v4, :cond_71

    invoke-virtual {p0}, Landroid/view/VerifiedMotionEvent;->getEventTimeNanos()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/view/VerifiedMotionEvent;->getEventTimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_71

    invoke-virtual {p0}, Landroid/view/VerifiedMotionEvent;->getSource()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedMotionEvent;->getSource()I

    move-result v4

    if-ne v3, v4, :cond_71

    invoke-virtual {p0}, Landroid/view/VerifiedMotionEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedMotionEvent;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_71

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mRawX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_71

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mRawY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_71

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    if-ne v3, v4, :cond_71

    iget-wide v3, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    iget-wide v5, v2, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_71

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mFlags:I

    if-ne v3, v4, :cond_71

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    if-ne v3, v4, :cond_71

    iget v3, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    iget v4, v2, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    if-ne v3, v4, :cond_71

    goto :goto_72

    :cond_71
    move v0, v1

    :goto_72
    return v0

    :cond_73
    :goto_73
    return v1
.end method

.method public getActionMasked()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    return v0
.end method

.method public getButtonState()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    return v0
.end method

.method public getDownTimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    return-wide v0
.end method

.method public getFlag(I)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget v1, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    return v0
.end method

.method public getMetaState()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    return v0
.end method

.method public getRawX()F
    .registers 2

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    return v0
.end method

.method public getRawY()F
    .registers 2

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedMotionEvent;->getDeviceId()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedMotionEvent;->getEventTimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedMotionEvent;->getSource()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedMotionEvent;->getDisplayId()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    add-int/2addr v1, v2

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mRawY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mActionMasked:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/VerifiedMotionEvent;->mDownTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedMotionEvent;->mButtonState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
