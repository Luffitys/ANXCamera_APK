.class public final Landroid/view/autofill/AutofillId;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_HAS_SESSION:I = 0x4

.field private static final FLAG_IS_VIRTUAL_INT:I = 0x1

.field private static final FLAG_IS_VIRTUAL_LONG:I = 0x2

.field public static final NO_SESSION:I


# instance fields
.field private mFlags:I

.field private mSessionId:I

.field private final mViewId:I

.field private final mVirtualIntId:I

.field private final mVirtualLongId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/autofill/AutofillId$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillId$1;-><init>()V

    sput-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8

    const/4 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 9

    int-to-long v3, p2

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method private constructor <init>(IIJI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    iput p2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_d

    long-to-int v0, p3

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    iput v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_16

    move-wide v0, p3

    goto :goto_18

    :cond_16
    const-wide/16 v0, -0x1

    :goto_18
    iput-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iput p5, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return-void
.end method

.method synthetic constructor <init>(IIJILandroid/view/autofill/AutofillId$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;I)V
    .registers 9

    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    int-to-long v3, p2

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;JI)V
    .registers 11

    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    const/4 v1, 0x6

    move-object v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public static withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;
    .registers 9

    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v7, v0, -0x5

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    move-wide v4, v0

    goto :goto_10

    :cond_c
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    int-to-long v0, v0

    move-wide v4, v0

    :goto_10
    nop

    new-instance v0, Landroid/view/autofill/AutofillId;

    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    const/4 v6, 0x0

    move-object v1, v0

    move v2, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-object v0
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

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/view/autofill/AutofillId;

    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v3, v4, :cond_1d

    return v1

    :cond_1d
    iget v3, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    if-eq v3, v4, :cond_24

    return v1

    :cond_24
    iget-wide v3, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v5, v2, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2d

    return v1

    :cond_2d
    iget v3, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mSessionId:I

    if-eq v3, v4, :cond_34

    return v1

    :cond_34
    return v0
.end method

.method public equalsIgnoreSession(Landroid/view/autofill/AutofillId;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v4, p1, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    return v1

    :cond_1f
    return v0
.end method

.method public getSessionId()I
    .registers 2

    iget v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return v0
.end method

.method public getViewId()I
    .registers 2

    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    return v0
.end method

.method public getVirtualChildIntId()I
    .registers 2

    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    return v0
.end method

.method public getVirtualChildLongId()J
    .registers 3

    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    return-wide v0
.end method

.method public hasSession()Z
    .registers 2

    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hashCode()I
    .registers 8

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    add-int/2addr v1, v3

    return v1
.end method

.method public isNonVirtual()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isVirtualInt()Z
    .registers 3

    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isVirtualLong()Z
    .registers 2

    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public resetSessionId()V
    .registers 2

    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return-void
.end method

.method public setSessionId(I)V
    .registers 3

    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    iput p1, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_1c
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_3a

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    :cond_21
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_2c
    :goto_2c
    return-void
.end method
