.class public Lmiui/util/InputStreamLoader;
.super Ljava/lang/Object;
.source "InputStreamLoader.java"


# instance fields
.field mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

.field private mContext:Landroid/content/Context;

.field private mFileAccessable:Lmiui/util/FileAccessable;

.field private mInputStream:Ljava/io/InputStream;

.field private mPath:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mZipFile:Ljava/util/zip/ZipFile;

.field private mZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    goto :goto_1a

    :cond_16
    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    :goto_1a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    iput-object p2, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmiui/util/FileAccessable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/InputStreamLoader;->mFileAccessable:Lmiui/util/FileAccessable;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_9
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    return-void
.end method

.method public get()Ljava/io/InputStream;
    .registers 4

    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    :try_start_3
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mFileAccessable:Lmiui/util/FileAccessable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mFileAccessable:Lmiui/util/FileAccessable;

    invoke-interface {v0}, Lmiui/util/FileAccessable;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_58

    :cond_10
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_58

    :cond_23
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mZipPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_58

    :cond_3d
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    goto :goto_58

    :cond_4b
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mByteArrayInputStream:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_58} :catch_59

    :cond_58
    :goto_58
    goto :goto_5a

    :catch_59
    move-exception v0

    :goto_5a
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_6d

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_6d

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    const/16 v2, 0x4000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    :cond_6d
    iget-object v0, p0, Lmiui/util/InputStreamLoader;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method
