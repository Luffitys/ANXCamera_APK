.class public final Lcom/bumptech/glide/a/b$d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private final files:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/bumptech/glide/a/b;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/a/b;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/a/b$d;->this$0:Lcom/bumptech/glide/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/a/b$d;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bumptech/glide/a/b$d;->sequenceNumber:J

    iput-object p5, p0, Lcom/bumptech/glide/a/b$d;->files:[Ljava/io/File;

    iput-object p6, p0, Lcom/bumptech/glide/a/b$d;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/a/b;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/a/a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bumptech/glide/a/b$d;-><init>(Lcom/bumptech/glide/a/b;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public edit()Lcom/bumptech/glide/a/b$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/a/b$d;->this$0:Lcom/bumptech/glide/a/b;

    iget-object v1, p0, Lcom/bumptech/glide/a/b$d;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bumptech/glide/a/b$d;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/bumptech/glide/a/b;->a(Lcom/bumptech/glide/a/b;Ljava/lang/String;J)Lcom/bumptech/glide/a/b$b;

    move-result-object p0

    return-object p0
.end method

.method public getLength(I)J
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/a/b$d;->lengths:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/bumptech/glide/a/b$d;->files:[Ljava/io/File;

    aget-object p0, p0, p1

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/bumptech/glide/a/b;->e(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public t(I)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/a/b$d;->files:[Ljava/io/File;

    aget-object p0, p0, p1

    return-object p0
.end method
