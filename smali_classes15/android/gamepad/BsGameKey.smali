.class public Landroid/gamepad/BsGameKey;
.super Ljava/lang/Object;
.source "BsGameKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gamepad/BsGameKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_PAD_HAT:I = -0x1

.field public static final DIRECTION_PAD_L:I = -0x3

.field public static final DIRECTION_PAD_R:I = -0x2

.field public static final FLAG_MOUSE_DRAG_KEY:I = 0x3

.field public static final FLAG_MOUSE_QUICK_SWITCH_KEY:I = 0x2

.field public static final FLAG_MOUSE_SWITCH_KEY:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final GYROSCOPE_KEY:Ljava/lang/String; = "gyroscope_key"

.field public static final INVAIABLE_INDEX:I = -0x5

.field public static final MOUSE_HORIZONTAL_SENSITIVITY:Ljava/lang/String; = "mouse_horizontal_sensitivity"

.field public static final MOUSE_KEY:Ljava/lang/String; = "mouse_key"

.field public static final MOUSE_TRACKER:I = -0x4

.field public static final MOUSE_VERTICAL_SENSITIVITY:Ljava/lang/String; = "mouse_vertical_sensitivity"


# instance fields
.field private keycode:I

.field private mExtra:Landroid/os/Bundle;

.field private productid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/gamepad/BsGameKey$1;

    invoke-direct {v0}, Landroid/gamepad/BsGameKey$1;-><init>()V

    sput-object v0, Landroid/gamepad/BsGameKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/gamepad/BsGameKey;->productid:I

    iput p2, p0, Landroid/gamepad/BsGameKey;->keycode:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKey;->productid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKey;->keycode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .registers 4

    iget v0, p0, Landroid/gamepad/BsGameKey;->productid:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Landroid/gamepad/BsGameKey;->keycode:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public getGyroscopyKey()Z
    .registers 4

    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "gyroscope_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getKeycode()I
    .registers 2

    iget v0, p0, Landroid/gamepad/BsGameKey;->keycode:I

    return v0
.end method

.method public getMouseHorizontalSensitivity()F
    .registers 4

    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_horizontal_sensitivity"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMouseKey()I
    .registers 4

    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMouseVerticalSensitivity()F
    .registers 4

    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_vertical_sensitivity"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getProductid()I
    .registers 2

    iget v0, p0, Landroid/gamepad/BsGameKey;->productid:I

    return v0
.end method

.method public setGyroscopeKey(Z)V
    .registers 4

    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "gyroscope_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMouseHorizontalSensitivity(F)V
    .registers 4

    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_horizontal_sensitivity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setMouseKey(I)V
    .registers 4

    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setMouseVerticalSensitivity(F)V
    .registers 4

    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_vertical_sensitivity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/gamepad/BsGameKey;->productid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/gamepad/BsGameKey;->keycode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v2, "key {procductid = 0x%x, keycode = %d, %s}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/gamepad/BsGameKey;->productid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/gamepad/BsGameKey;->keycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
