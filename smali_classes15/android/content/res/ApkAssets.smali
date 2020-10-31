.class public final Landroid/content/res/ApkAssets;
.super Ljava/lang/Object;
.source "ApkAssets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ApkAssets$FormatType;,
        Landroid/content/res/ApkAssets$PropertyFlags;
    }
.end annotation


# static fields
.field private static final FORMAT_APK:I = 0x0

.field private static final FORMAT_ARSC:I = 0x2

.field private static final FORMAT_DIR:I = 0x3

.field private static final FORMAT_IDMAP:I = 0x1

.field public static final PROPERTY_DYNAMIC:I = 0x2

.field public static final PROPERTY_LOADER:I = 0x4

.field private static final PROPERTY_OVERLAY:I = 0x8

.field public static final PROPERTY_SYSTEM:I = 0x1


# instance fields
.field private final mAssets:Landroid/content/res/loader/AssetsProvider;

.field private final mFlags:I

.field private final mNativePtr:J

.field private mOpen:Z

.field private final mStringBlock:Landroid/content/res/StringBlock;


# direct methods
.method private constructor <init>(ILandroid/content/res/loader/AssetsProvider;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/ApkAssets;->mOpen:Z

    iput p1, p0, Landroid/content/res/ApkAssets;->mFlags:I

    invoke-static {p1, p2}, Landroid/content/res/ApkAssets;->nativeLoadEmpty(ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    iput-object p2, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    return-void
.end method

.method private constructor <init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/ApkAssets;->mOpen:Z

    const-string v1, "fd"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "friendlyName"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p4, p0, Landroid/content/res/ApkAssets;->mFlags:I

    invoke-static {p1, p2, p3, p4, p5}, Landroid/content/res/ApkAssets;->nativeLoadFd(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    new-instance v3, Landroid/content/res/StringBlock;

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    invoke-direct {v3, v1, v2, v0}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v3, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    iput-object p5, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    return-void
.end method

.method private constructor <init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/ApkAssets;->mOpen:Z

    const-string v1, "fd"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "friendlyName"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p8, p0, Landroid/content/res/ApkAssets;->mFlags:I

    invoke-static/range {p1 .. p9}, Landroid/content/res/ApkAssets;->nativeLoadFdOffsets(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    new-instance v3, Landroid/content/res/StringBlock;

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    invoke-direct {v3, v1, v2, v0}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v3, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    iput-object p9, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/ApkAssets;->mOpen:Z

    const-string/jumbo v1, "path"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p3, p0, Landroid/content/res/ApkAssets;->mFlags:I

    invoke-static {p1, p2, p3, p4}, Landroid/content/res/ApkAssets;->nativeLoad(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    new-instance v3, Landroid/content/res/StringBlock;

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    invoke-direct {v3, v1, v2, v0}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v3, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    iput-object p4, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    return-void
.end method

.method public static loadEmptyForLoader(ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 3

    new-instance v0, Landroid/content/res/ApkAssets;

    invoke-direct {v0, p0, p1}, Landroid/content/res/ApkAssets;-><init>(ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromDir(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v6
.end method

.method public static loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v10, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    move-object v0, v10

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V

    return-object v10
.end method

.method public static loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    return-object v0
.end method

.method public static loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadFromPath(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Landroid/content/res/ApkAssets;

    const/4 v1, 0x2

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v6
.end method

.method public static loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v10, Landroid/content/res/ApkAssets;

    const/4 v1, 0x2

    move-object v0, v10

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V

    return-object v10
.end method

.method private static native nativeDefinesOverlayable(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetAssetPath(J)Ljava/lang/String;
.end method

.method private static native nativeGetOverlayableInfo(JLjava/lang/String;)Landroid/content/om/OverlayableInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeGetStringBlock(J)J
.end method

.method private static native nativeIsUpToDate(J)Z
.end method

.method private static native nativeLoad(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeLoadEmpty(ILandroid/content/res/loader/AssetsProvider;)J
.end method

.method private static native nativeLoadFd(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeLoadFdOffsets(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenXml(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/ApkAssets;->mOpen:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ApkAssets;->mOpen:Z

    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    invoke-virtual {v0}, Landroid/content/res/StringBlock;->close()V

    :cond_11
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDestroy(J)V

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public definesOverlayable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDefinesOverlayable(J)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->close()V

    return-void
.end method

.method public getAssetPath()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetAssetPath(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getAssetsProvider()Landroid/content/res/loader/AssetsProvider;
    .registers 2

    iget-object v0, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    return-object v0
.end method

.method public getOverlayableInfo(Ljava/lang/String;)Landroid/content/om/OverlayableInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeGetOverlayableInfo(JLjava/lang/String;)Landroid/content/om/OverlayableInfo;

    move-result-object v0

    return-object v0
.end method

.method getStringFromPool(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public isForLoader()Z
    .registers 2

    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUpToDate()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeIsUpToDate(J)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_6
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeOpenXml(JLjava/lang/String;)J

    move-result-wide v0

    new-instance v2, Landroid/content/res/XmlBlock;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_30

    :try_start_12
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_26

    if-eqz v3, :cond_1e

    nop

    :try_start_19
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_30

    return-object v3

    :cond_1e
    :try_start_1e
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "block.newParser() returned a null parser"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v3

    :try_start_27
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v4

    :try_start_2c
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2f
    throw v3

    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkAssets{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
