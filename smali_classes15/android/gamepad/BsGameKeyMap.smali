.class public Landroid/gamepad/BsGameKeyMap;
.super Ljava/lang/Object;
.source "BsGameKeyMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gamepad/BsGameKeyMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private centerX:F

.field private centerY:F

.field private extra:I

.field private radius:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/gamepad/BsGameKeyMap$1;

    invoke-direct {v0}, Landroid/gamepad/BsGameKeyMap$1;-><init>()V

    sput-object v0, Landroid/gamepad/BsGameKeyMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/gamepad/BsGameKeyMap;->centerX:F

    iput p2, p0, Landroid/gamepad/BsGameKeyMap;->centerY:F

    iput p3, p0, Landroid/gamepad/BsGameKeyMap;->radius:F

    iput p4, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKeyMap;->centerX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKeyMap;->centerY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKeyMap;->radius:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterX()F
    .registers 2

    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->centerX:F

    return v0
.end method

.method public getCenterY()F
    .registers 2

    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->centerY:F

    return v0
.end method

.method public getExtra()I
    .registers 2

    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    return v0
.end method

.method public getRadius()F
    .registers 2

    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->radius:F

    return v0
.end method

.method public setExtra(I)V
    .registers 2

    iput p1, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/gamepad/BsGameKeyMap;->centerX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/gamepad/BsGameKeyMap;->centerY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/gamepad/BsGameKeyMap;->radius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Pos {x = %f, y = %f, r = %f, extra = %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->centerX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->centerY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->radius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
