.class Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;
.super Ljava/io/InputStream;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/SimulateNinePngUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NinePathInputStream"
.end annotation


# instance fields
.field private mCount:I

.field private mExtraHeaderData:[B

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iput-object p1, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    iput v0, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    return-void
.end method

.method private static checkOffsetAndCount(III)V
    .registers 6

    or-int v0, p1, p2

    if-ltz v0, :cond_b

    if-gt p1, p0, :cond_b

    sub-int v0, p0, p1

    if-lt v0, p2, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrayLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iget-object v1, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    array-length v2, v1

    if-ge v0, v2, :cond_e

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    aget-byte v0, v1, v0

    return v0

    :cond_e
    iget-object v0, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-static {v0, p2, p3}, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->checkOffsetAndCount(III)V

    const/4 v0, 0x0

    :goto_5
    iget v1, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iget-object v2, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    if-ge v0, p3, :cond_1b

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    aget-byte v1, v2, v1

    aput-byte v1, p1, v0

    move v0, v3

    goto :goto_5

    :cond_1b
    if-ge v0, p3, :cond_28

    iget-object v1, p0, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    return v0
.end method
