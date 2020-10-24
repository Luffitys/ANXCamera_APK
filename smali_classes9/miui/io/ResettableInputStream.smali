.class public Lmiui/io/ResettableInputStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAssetPath:Ljava/lang/String;

.field private final mByteArray:[B

.field private final mContext:Landroid/content/Context;

.field private final mFinalizeGuardian:Ljava/lang/Object;

.field private volatile mInputStream:Ljava/io/InputStream;

.field private mLastException:Ljava/io/IOException;

.field private mOpenStack:Ljava/lang/Throwable;

.field private final mPath:Ljava/lang/String;

.field private final mType:Lmiui/io/ResettableInputStream$Type;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lmiui/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiui/io/ResettableInputStream$1;-><init>(Lmiui/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lmiui/io/ResettableInputStream$Type;->File:Lmiui/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mType:Lmiui/io/ResettableInputStream$Type;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mPath:Ljava/lang/String;

    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/io/ResettableInputStream$Type;->Uri:Lmiui/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mType:Lmiui/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mPath:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mByteArray:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lmiui/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiui/io/ResettableInputStream$1;-><init>(Lmiui/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    sget-object v0, Lmiui/io/ResettableInputStream$Type;->Asset:Lmiui/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mType:Lmiui/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lmiui/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mPath:Ljava/lang/String;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mByteArray:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lmiui/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiui/io/ResettableInputStream$1;-><init>(Lmiui/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    sget-object v0, Lmiui/io/ResettableInputStream$Type;->File:Lmiui/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mType:Lmiui/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mByteArray:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lmiui/io/ResettableInputStream$1;

    invoke-direct {v0, p0}, Lmiui/io/ResettableInputStream$1;-><init>(Lmiui/io/ResettableInputStream;)V

    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    sget-object v0, Lmiui/io/ResettableInputStream$Type;->ByteArray:Lmiui/io/ResettableInputStream$Type;

    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mType:Lmiui/io/ResettableInputStream$Type;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mByteArray:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mPath:Ljava/lang/String;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lmiui/io/ResettableInputStream;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lmiui/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    return-object p0
.end method

.method private openStream()V
    .locals 4

    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    if-nez v0, :cond_6

    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmiui/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    sget-object v0, Lmiui/io/ResettableInputStream$2;->$SwitchMap$miui$io$ResettableInputStream$Type:[I

    iget-object v2, p0, Lmiui/io/ResettableInputStream;->mType:Lmiui/io/ResettableInputStream$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lmiui/io/ResettableInputStream;->mByteArray:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/io/ResettableInputStream;->mType:Lmiui/io/ResettableInputStream$Type;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lmiui/io/ResettableInputStream;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lmiui/io/ResettableInputStream;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lmiui/io/ResettableInputStream;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    throw v0
.end method


# virtual methods
.method public available()I
    .locals 0

    invoke-direct {p0}, Lmiui/io/ResettableInputStream;->openStream()V

    iget-object p0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mFinalizeGuardian:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mOpenStack:Ljava/lang/Throwable;

    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    iput-object v1, p0, Lmiui/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    throw v2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public mark(I)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lmiui/io/ResettableInputStream;->openStream()V

    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lmiui/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lmiui/io/ResettableInputStream;->openStream()V

    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lmiui/io/ResettableInputStream;->mLastException:Ljava/io/IOException;

    invoke-super {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 0

    invoke-direct {p0}, Lmiui/io/ResettableInputStream;->openStream()V

    iget-object p0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .locals 0

    invoke-direct {p0}, Lmiui/io/ResettableInputStream;->openStream()V

    iget-object p0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 0

    invoke-direct {p0}, Lmiui/io/ResettableInputStream;->openStream()V

    iget-object p0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/io/ResettableInputStream;->close()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 0

    invoke-direct {p0}, Lmiui/io/ResettableInputStream;->openStream()V

    iget-object p0, p0, Lmiui/io/ResettableInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
