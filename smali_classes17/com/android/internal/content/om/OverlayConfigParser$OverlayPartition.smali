.class Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
.super Landroid/content/pm/PackagePartitions$SystemPartition;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayPartition"
.end annotation


# static fields
.field static final POLICY_ODM:Ljava/lang/String; = "odm"

.field static final POLICY_OEM:Ljava/lang/String; = "oem"

.field static final POLICY_PRODUCT:Ljava/lang/String; = "product"

.field static final POLICY_PUBLIC:Ljava/lang/String; = "public"

.field static final POLICY_SYSTEM:Ljava/lang/String; = "system"

.field static final POLICY_VENDOR:Ljava/lang/String; = "vendor"


# instance fields
.field public final policy:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    invoke-static {p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    invoke-static {p2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    return-void
.end method

.method private static policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    if-eqz v0, :cond_3f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_33

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    goto :goto_3f

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine policy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    const-string/jumbo v0, "product"

    return-object v0

    :cond_33
    const-string/jumbo v0, "oem"

    return-object v0

    :cond_37
    const-string/jumbo v0, "odm"

    return-object v0

    :cond_3b
    const-string/jumbo v0, "vendor"

    return-object v0

    :cond_3f
    :goto_3f
    const-string/jumbo v0, "system"

    return-object v0
.end method
