.class Landroid/security/keymaster/KeymasterIntArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterIntArgument.java"


# instance fields
.field public final value:I


# direct methods
.method public constructor <init>(II)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_2f

    const/high16 v1, 0x20000000

    if-eq v0, v1, :cond_2f

    const/high16 v1, 0x30000000

    if-eq v0, v1, :cond_2f

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_18

    goto :goto_2f

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad int tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    nop

    iput p2, p0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    return-void
.end method

.method public constructor <init>(ILandroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    return-void
.end method


# virtual methods
.method public writeValue(Landroid/os/Parcel;)V
    .registers 3

    iget v0, p0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
