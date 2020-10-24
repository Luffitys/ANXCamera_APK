.class final Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final blocks:I

.field public final file:Ljava/io/File;

.field public final flags:I

.field public final tag:Ljava/lang/String;

.field public final timestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iput-wide p1, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int p2, v0

    iput p2, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x40

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-gez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iput v2, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-string v4, ".gz"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move v3, v5

    :cond_1
    const-string v4, ".lost"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v3, v3, 0x1

    add-int/2addr p2, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    :goto_0
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string v4, ".txt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x2

    :goto_1
    add-int/2addr p2, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    goto :goto_0

    :cond_3
    const-string v4, ".dat"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :goto_2
    iput v3, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    return-void

    :cond_4
    iput v2, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p6, 0x1

    if-nez v0, :cond_3

    iput-object p3, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iput-wide p4, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iput p6, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "@"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    and-int/lit8 p3, p6, 0x2

    if-eqz p3, :cond_0

    const-string p3, ".txt"

    goto :goto_0

    :cond_0
    const-string p3, ".dat"

    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_1

    const-string p3, ".gz"

    goto :goto_1

    :cond_1
    const-string p3, ""

    :goto_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    int-to-long p3, p7

    add-long/2addr p1, p3

    const-wide/16 p5, 0x1

    sub-long/2addr p1, p5

    div-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t rename "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iput-wide p3, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".lost"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)I
    .locals 6

    iget-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-wide v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-gez v4, :cond_0

    return v5

    :cond_0
    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v0, :cond_3

    return v5

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_6

    return v5

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-le p0, p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    invoke-virtual {p0, p1}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->compareTo(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)I

    move-result p0

    return p0
.end method
