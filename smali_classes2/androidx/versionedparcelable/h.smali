.class Landroidx/versionedparcelable/h;
.super Landroidx/versionedparcelable/VersionedParcel;
.source "VersionedParcelStream.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/h$b;,
        Landroidx/versionedparcelable/h$a;
    }
.end annotation


# static fields
.field private static final TYPE_BOOLEAN:I = 0x5

.field private static final TYPE_DOUBLE:I = 0x7

.field private static final TYPE_FLOAT:I = 0xd

.field private static final TYPE_INT:I = 0x9

.field private static final TYPE_LONG:I = 0xb

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_STRING:I = 0x3

.field private static final TYPE_STRING_ARRAY:I = 0x4

.field private static final UTF_16:Ljava/nio/charset/Charset;

.field private static final kb:I = 0x1

.field private static final lb:I = 0x2

.field private static final mb:I = 0x6

.field private static final nb:I = 0x8

.field private static final ob:I = 0xa

.field private static final pb:I = 0xc

.field private static final qb:I = 0xe


# instance fields
.field private final bb:Ljava/io/DataInputStream;

.field private final eb:Ljava/io/DataOutputStream;

.field private final fb:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/versionedparcelable/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private gb:Ljava/io/DataInputStream;

.field private hb:Ljava/io/DataOutputStream;

.field private ib:Landroidx/versionedparcelable/h$a;

.field private jb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/versionedparcelable/h;->UTF_16:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Landroidx/versionedparcelable/VersionedParcel;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/h;->fb:Landroid/util/SparseArray;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroidx/versionedparcelable/h;->bb:Ljava/io/DataInputStream;

    if-eqz p2, :cond_1

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :cond_1
    iput-object v0, p0, Landroidx/versionedparcelable/h;->eb:Ljava/io/DataOutputStream;

    iget-object p1, p0, Landroidx/versionedparcelable/h;->bb:Ljava/io/DataInputStream;

    iput-object p1, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    iget-object p1, p0, Landroidx/versionedparcelable/h;->eb:Ljava/io/DataOutputStream;

    iput-object p1, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    return-void
.end method

.method private a(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->oa()[F

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readFloat()F

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->qa()[J

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readLong()J

    move-result-wide p0

    invoke-virtual {p3, p2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->pa()[I

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readInt()I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->na()[D

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readDouble()D

    move-result-wide p0

    invoke-virtual {p3, p2, p0, p1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->ma()[Z

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readBoolean()Z

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_a
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_e
    const/4 p0, 0x0

    invoke-virtual {p3, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeObject(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/h;->writeInt(I)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/h;->writeBundle(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/h;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/h;->writeBoolean(Z)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p1, [Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/h;->writeDouble(D)V

    goto/16 :goto_0

    :cond_6
    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, [D

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeDoubleArray([D)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/h;->writeInt(I)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, [I

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeIntArray([I)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/h;->writeLong(J)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, [J

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeLongArray([J)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/h;->writeFloat(F)V

    goto :goto_0

    :cond_c
    instance-of v0, p1, [F

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/h;->writeInt(I)V

    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloatArray([F)V

    :goto_0
    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(Landroid/os/Parcelable;)V
    .locals 0

    iget-boolean p0, p0, Landroidx/versionedparcelable/h;->jb:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parcelables cannot be written to an OutputStream"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Landroidx/versionedparcelable/h;->jb:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Serialization of this object is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(I)Z
    .locals 5

    iget-object v0, p0, Landroidx/versionedparcelable/h;->fb:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/h$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/versionedparcelable/h;->fb:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-static {v0}, Landroidx/versionedparcelable/h$b;->a(Landroidx/versionedparcelable/h$b;)Ljava/io/DataInputStream;

    move-result-object p1

    iput-object p1, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    return v1

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/h;->bb:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v2, 0xffff

    and-int v3, v0, v2

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Landroidx/versionedparcelable/h;->bb:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    :cond_1
    new-instance v4, Landroidx/versionedparcelable/h$b;

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v2

    iget-object v2, p0, Landroidx/versionedparcelable/h;->bb:Ljava/io/DataInputStream;

    invoke-direct {v4, v0, v3, v2}, Landroidx/versionedparcelable/h$b;-><init>(IILjava/io/DataInputStream;)V

    invoke-static {v4}, Landroidx/versionedparcelable/h$b;->b(Landroidx/versionedparcelable/h$b;)I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-static {v4}, Landroidx/versionedparcelable/h$b;->a(Landroidx/versionedparcelable/h$b;)Ljava/io/DataInputStream;

    move-result-object p1

    iput-object p1, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/versionedparcelable/h;->fb:Landroid/util/SparseArray;

    invoke-static {v4}, Landroidx/versionedparcelable/h$b;->b(Landroidx/versionedparcelable/h$b;)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public h(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->ja()V

    new-instance v0, Landroidx/versionedparcelable/h$a;

    iget-object v1, p0, Landroidx/versionedparcelable/h;->eb:Ljava/io/DataOutputStream;

    invoke-direct {v0, p1, v1}, Landroidx/versionedparcelable/h$a;-><init>(ILjava/io/DataOutputStream;)V

    iput-object v0, p0, Landroidx/versionedparcelable/h;->ib:Landroidx/versionedparcelable/h$a;

    iget-object p1, p0, Landroidx/versionedparcelable/h;->ib:Landroidx/versionedparcelable/h$a;

    invoke-static {p1}, Landroidx/versionedparcelable/h$a;->b(Landroidx/versionedparcelable/h$a;)Ljava/io/DataOutputStream;

    move-result-object p1

    iput-object p1, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    return-void
.end method

.method public ja()V
    .locals 1

    iget-object v0, p0, Landroidx/versionedparcelable/h;->ib:Landroidx/versionedparcelable/h$a;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Landroidx/versionedparcelable/h$a;->a(Landroidx/versionedparcelable/h$a;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/versionedparcelable/h;->ib:Landroidx/versionedparcelable/h$a;

    invoke-virtual {v0}, Landroidx/versionedparcelable/h$a;->ta()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/versionedparcelable/h;->ib:Landroidx/versionedparcelable/h$a;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected ka()Landroidx/versionedparcelable/VersionedParcel;
    .locals 2

    new-instance v0, Landroidx/versionedparcelable/h;

    iget-object v1, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-direct {v0, v1, p0}, Landroidx/versionedparcelable/h;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public la()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public ra()Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public readBoolean()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readBundle()Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/versionedparcelable/h;->readInt()I

    move-result v4

    invoke-direct {p0, v4, v3, v1}, Landroidx/versionedparcelable/h;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readByteArray()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iget-object p0, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readDouble()D
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readFloat()F
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readInt()I
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readLong()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iget-object p0, p0, Landroidx/versionedparcelable/h;->gb:Ljava/io/DataInputStream;

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Ljava/lang/String;

    sget-object v1, Landroidx/versionedparcelable/h;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readStrongBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public writeBoolean(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p1, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/h;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/versionedparcelable/h;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p1, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeByteArray([B)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p1, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeByteArray([BII)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p1, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeDouble(D)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p1, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeFloat(F)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p1, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeInt(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p1, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeLong(J)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p1, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroidx/versionedparcelable/h;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object v0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/versionedparcelable/h;->hb:Ljava/io/DataOutputStream;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {p1, p0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeStrongBinder(Landroid/os/IBinder;)V
    .locals 0

    iget-boolean p0, p0, Landroidx/versionedparcelable/h;->jb:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Binders cannot be written to an OutputStream"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeStrongInterface(Landroid/os/IInterface;)V
    .locals 0

    iget-boolean p0, p0, Landroidx/versionedparcelable/h;->jb:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Binders cannot be written to an OutputStream"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
