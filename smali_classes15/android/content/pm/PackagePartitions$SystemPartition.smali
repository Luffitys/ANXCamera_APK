.class public Landroid/content/pm/PackagePartitions$SystemPartition;
.super Ljava/lang/Object;
.source "PackagePartitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackagePartitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemPartition"
.end annotation


# instance fields
.field private final mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field public final type:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iput v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v1, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    # invokes: Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;
    invoke-static {v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->access$300(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$1;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$1;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string v2, "app"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$1;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz p3, :cond_21

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string/jumbo v2, "priv-app"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$1;)V

    goto :goto_22

    :cond_21
    move-object v0, v1

    :goto_22
    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz p4, :cond_30

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string/jumbo v2, "overlay"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$1;)V

    move-object v1, v0

    goto :goto_31

    :cond_30
    nop

    :goto_31
    iput-object v1, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;IZZLandroid/content/pm/PackagePartitions$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 8

    iget v0, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iget-object v1, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    iget-object v4, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v4, :cond_10

    goto :goto_11

    :cond_10
    move v2, v3

    :goto_11
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;IZZ)V

    return-void
.end method


# virtual methods
.method public containsApp(Ljava/io/File;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_14

    # invokes: Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->access$300(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    # invokes: Landroid/content/pm/PackagePartitions;->canonicalize(Ljava/io/File;)Ljava/io/File;
    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->access$400(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public containsFile(Ljava/io/File;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    # invokes: Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->access$300(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    # invokes: Landroid/content/pm/PackagePartitions;->canonicalize(Ljava/io/File;)Ljava/io/File;
    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->access$400(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public containsOverlay(Ljava/io/File;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_14

    # invokes: Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->access$300(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    # invokes: Landroid/content/pm/PackagePartitions;->canonicalize(Ljava/io/File;)Ljava/io/File;
    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->access$400(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public containsPath(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public containsPrivApp(Ljava/io/File;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_14

    # invokes: Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->access$300(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    # invokes: Landroid/content/pm/PackagePartitions;->canonicalize(Ljava/io/File;)Ljava/io/File;
    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->access$400(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public getAppFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    # invokes: Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->access$300(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    # invokes: Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->access$300(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    # invokes: Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->access$300(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getPrivAppFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    # invokes: Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->access$300(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0
.end method
