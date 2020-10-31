.class Lmiui/security/StoragePolicyManager$PolicyData;
.super Ljava/lang/Object;
.source "StoragePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/StoragePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyData"
.end annotation


# instance fields
.field public mAllExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAllPolicy:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/security/StoragePolicyManager;


# direct methods
.method public constructor <init>(Lmiui/security/StoragePolicyManager;)V
    .registers 4

    iput-object p1, p0, Lmiui/security/StoragePolicyManager$PolicyData;->this$0:Lmiui/security/StoragePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/security/StoragePolicyManager$PolicyData;->mMountMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/security/StoragePolicyManager$PolicyData;->mAllExceptions:Ljava/util/List;

    # getter for: Lmiui/security/StoragePolicyManager;->mSupportIsolatedStorage:Z
    invoke-static {p1}, Lmiui/security/StoragePolicyManager;->access$000(Lmiui/security/StoragePolicyManager;)Z

    move-result p1

    if-eqz p1, :cond_32

    new-instance p1, Landroid/util/Pair;

    const-string v0, "/mnt/runtime/default/emulated/0/.FileExplorer;/mnt/runtime/default/emulated/0/MIUI/Gallery/cloud/.secretAlbum"

    const-string v1, "/storage/emulated/0/.FileExplorer;/storage/emulated/0/MIUI/Gallery/cloud/.secretAlbum"

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/security/StoragePolicyManager$PolicyData;->mAllPolicy:Landroid/util/Pair;

    iget-object p1, p0, Lmiui/security/StoragePolicyManager$PolicyData;->mAllExceptions:Ljava/util/List;

    const-string v0, "com.miui.gallery"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiui/security/StoragePolicyManager$PolicyData;->mAllExceptions:Ljava/util/List;

    const-string v0, "com.android.fileexplorer"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    return-void
.end method
