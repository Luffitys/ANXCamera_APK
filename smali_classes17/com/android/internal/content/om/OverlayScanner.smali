.class public Lcom/android/internal/content/om/OverlayScanner;
.super Ljava/lang/Object;
.source "OverlayScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    }
.end annotation


# instance fields
.field private final mParsedOverlayInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method final getAllParsedInfos()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getParsedInfo(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    return-object v0
.end method

.method public parseOverlayManifest(Ljava/io/File;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageParser$ApkLite;->targetPackageName:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_23

    :cond_b
    new-instance v2, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget-object v4, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/PackageParser$ApkLite;->targetPackageName:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/PackageParser$ApkLite;->targetSdkVersion:I

    iget-boolean v7, v0, Landroid/content/pm/PackageParser$ApkLite;->overlayIsStatic:Z

    iget v8, v0, Landroid/content/pm/PackageParser$ApkLite;->overlayPriority:I

    new-instance v9, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/io/File;)V
    :try_end_22
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_22} :catch_24

    move-object v1, v2

    :goto_23
    return-object v1

    :catch_24
    move-exception v0

    const-string v2, "OverlayConfig"

    const-string v3, "Got exception loading overlay."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public scanDir(Ljava/io/File;)V
    .registers 8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6a

    :cond_d
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_36

    return-void

    :cond_36
    const/4 v1, 0x0

    :goto_37
    array-length v2, v0

    if-ge v1, v2, :cond_69

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {p0, v2}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    :cond_45
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_58

    goto :goto_66

    :cond_58
    invoke-virtual {p0, v2}, Lcom/android/internal/content/om/OverlayScanner;->parseOverlayManifest(Ljava/io/File;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    move-result-object v3

    if-nez v3, :cond_5f

    goto :goto_66

    :cond_5f
    iget-object v4, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_69
    return-void

    :cond_6a
    :goto_6a
    return-void
.end method
