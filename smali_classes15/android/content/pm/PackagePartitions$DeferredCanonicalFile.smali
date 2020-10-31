.class Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;
.super Ljava/lang/Object;
.source "PackagePartitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackagePartitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeferredCanonicalFile"
.end annotation


# instance fields
.field private mFile:Ljava/io/File;

.field private mIsCanonical:Z


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mIsCanonical:Z

    iput-object p1, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mIsCanonical:Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getFile()Ljava/io/File;
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mIsCanonical:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mFile:Ljava/io/File;

    # invokes: Landroid/content/pm/PackagePartitions;->canonicalize(Ljava/io/File;)Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/PackagePartitions;->access$400(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mFile:Ljava/io/File;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mIsCanonical:Z

    :cond_f
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->mFile:Ljava/io/File;

    return-object v0
.end method
