.class public Landroid/content/pm/PackagePartitions;
.super Ljava/lang/Object;
.source "PackagePartitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;,
        Landroid/content/pm/PackagePartitions$SystemPartition;,
        Landroid/content/pm/PackagePartitions$PartitionType;
    }
.end annotation


# static fields
.field public static final PARTITION_ODM:I = 0x2

.field public static final PARTITION_OEM:I = 0x3

.field public static final PARTITION_PRODUCT:I = 0x4

.field public static final PARTITION_SYSTEM:I = 0x0

.field public static final PARTITION_SYSTEM_EXT:I = 0x5

.field public static final PARTITION_VENDOR:I = 0x1

.field private static final SYSTEM_PARTITIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/content/pm/PackagePartitions$SystemPartition;

    new-instance v8, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;IZZLandroid/content/pm/PackagePartitions$1;)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;IZZLandroid/content/pm/PackagePartitions$1;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;IZZLandroid/content/pm/PackagePartitions$1;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;IZZLandroid/content/pm/PackagePartitions$1;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;IZZLandroid/content/pm/PackagePartitions$1;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x5

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;IZZLandroid/content/pm/PackagePartitions$1;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/pm/PackagePartitions;->SYSTEM_PARTITIONS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Ljava/io/File;)Ljava/io/File;
    .registers 2

    invoke-static {p0}, Landroid/content/pm/PackagePartitions;->canonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static canonicalize(Ljava/io/File;)Ljava/io/File;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    return-object p0
.end method

.method public static getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    sget-object v2, Landroid/content/pm/PackagePartitions;->SYSTEM_PARTITIONS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_22

    sget-object v3, Landroid/content/pm/PackagePartitions;->SYSTEM_PARTITIONS:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-interface {p0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_22
    return-object v0
.end method
