.class public final Landroid/view/VerifiedKeyEvent;
.super Landroid/view/VerifiedInputEvent;
.source "VerifiedKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedKeyEvent$KeyEventAction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VerifiedKeyEvent"


# instance fields
.field private mAction:I

.field private mDownTimeNanos:J

.field private mFlags:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mRepeatCount:I

.field private mScanCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/VerifiedKeyEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedKeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJIIIJIIIII)V
    .registers 24

    move-object v7, p0

    move/from16 v8, p6

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/VerifiedInputEvent;-><init>(IIJII)V

    iput v8, v7, Landroid/view/VerifiedKeyEvent;->mAction:I

    const-class v0, Landroid/view/VerifiedKeyEvent$KeyEventAction;

    const/4 v1, 0x0

    invoke-static {v0, v1, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    move-wide/from16 v2, p7

    iput-wide v2, v7, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    const-class v0, Landroid/annotation/SuppressLint;

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v9, "value"

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-string v9, "MethodNameUnits"

    aput-object v9, v5, v6

    invoke-static {v0, v1, v4, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;[Ljava/lang/Object;)V

    move/from16 v0, p9

    iput v0, v7, Landroid/view/VerifiedKeyEvent;->mFlags:I

    move/from16 v1, p10

    iput v1, v7, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    move/from16 v4, p11

    iput v4, v7, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    move/from16 v5, p12

    iput v5, v7, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    move/from16 v6, p13

    iput v6, v7, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroid/view/VerifiedInputEvent;-><init>(Landroid/os/Parcel;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v3, v0, Landroid/view/VerifiedKeyEvent;->mAction:I

    const-class v11, Landroid/view/VerifiedKeyEvent$KeyEventAction;

    const/4 v12, 0x0

    invoke-static {v11, v12, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-wide v4, v0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    const-class v11, Landroid/annotation/SuppressLint;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "value"

    aput-object v16, v14, v15

    const-string v15, "MethodNameUnits"

    aput-object v15, v14, v1

    invoke-static {v11, v12, v13, v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;[Ljava/lang/Object;)V

    iput v6, v0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    iput v7, v0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    iput v8, v0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    iput v9, v0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    iput v10, v0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

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

    if-eqz p1, :cond_6f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6f

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/VerifiedKeyEvent;

    nop

    invoke-virtual {p0}, Landroid/view/VerifiedKeyEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedKeyEvent;->getDeviceId()I

    move-result v4

    if-ne v3, v4, :cond_6d

    invoke-virtual {p0}, Landroid/view/VerifiedKeyEvent;->getEventTimeNanos()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/view/VerifiedKeyEvent;->getEventTimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_6d

    invoke-virtual {p0}, Landroid/view/VerifiedKeyEvent;->getSource()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedKeyEvent;->getSource()I

    move-result v4

    if-ne v3, v4, :cond_6d

    invoke-virtual {p0}, Landroid/view/VerifiedKeyEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedKeyEvent;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_6d

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mAction:I

    if-ne v3, v4, :cond_6d

    iget-wide v3, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    iget-wide v5, v2, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6d

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mFlags:I

    if-ne v3, v4, :cond_6d

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    if-ne v3, v4, :cond_6d

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    if-ne v3, v4, :cond_6d

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    if-ne v3, v4, :cond_6d

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    if-ne v3, v4, :cond_6d

    goto :goto_6e

    :cond_6d
    move v0, v1

    :goto_6e
    return v0

    :cond_6f
    :goto_6f
    return v1
.end method

.method public getAction()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    return v0
.end method

.method public getDownTimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    return-wide v0
.end method

.method public getFlag(I)Ljava/lang/Boolean;
    .registers 3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    return v0
.end method

.method public getKeyCode()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    return v0
.end method

.method public getMetaState()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    return v0
.end method

.method public getRepeatCount()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    return v0
.end method

.method public getScanCode()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedKeyEvent;->getDeviceId()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedKeyEvent;->getEventTimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedKeyEvent;->getSource()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedKeyEvent;->getDisplayId()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    add-int/2addr v1, v2

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
