.class Landroidx/versionedparcelable/h$a;
.super Ljava/lang/Object;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final mTarget:Ljava/io/DataOutputStream;

.field private final rb:Ljava/io/ByteArrayOutputStream;

.field private final sb:Ljava/io/DataOutputStream;

.field private final tb:I


# direct methods
.method constructor <init>(ILjava/io/DataOutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/h$a;->rb:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Landroidx/versionedparcelable/h$a;->rb:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroidx/versionedparcelable/h$a;->sb:Ljava/io/DataOutputStream;

    iput p1, p0, Landroidx/versionedparcelable/h$a;->tb:I

    iput-object p2, p0, Landroidx/versionedparcelable/h$a;->mTarget:Ljava/io/DataOutputStream;

    return-void
.end method

.method static synthetic a(Landroidx/versionedparcelable/h$a;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    iget-object p0, p0, Landroidx/versionedparcelable/h$a;->rb:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static synthetic b(Landroidx/versionedparcelable/h$a;)Ljava/io/DataOutputStream;
    .locals 0

    iget-object p0, p0, Landroidx/versionedparcelable/h$a;->sb:Ljava/io/DataOutputStream;

    return-object p0
.end method


# virtual methods
.method ta()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/versionedparcelable/h$a;->sb:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Landroidx/versionedparcelable/h$a;->rb:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Landroidx/versionedparcelable/h$a;->tb:I

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    if-lt v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    or-int/2addr v1, v3

    iget-object v3, p0, Landroidx/versionedparcelable/h$a;->mTarget:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-lt v0, v2, :cond_1

    iget-object v1, p0, Landroidx/versionedparcelable/h$a;->mTarget:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_1
    iget-object v0, p0, Landroidx/versionedparcelable/h$a;->rb:Ljava/io/ByteArrayOutputStream;

    iget-object p0, p0, Landroidx/versionedparcelable/h$a;->mTarget:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
