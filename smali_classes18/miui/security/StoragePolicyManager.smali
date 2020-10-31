.class public Lmiui/security/StoragePolicyManager;
.super Ljava/lang/Object;
.source "StoragePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/StoragePolicyManager$PolicyData;
    }
.end annotation


# static fields
.field public static final EXTERNAL_DEFAULT_PATH_PREFIX:Ljava/lang/String; = "/mnt/runtime/default/emulated/"

.field public static final EXTERNAL_FULL_PATH_PREFIX:Ljava/lang/String; = "/mnt/runtime/full/emulated/"

.field public static final EXTERNAL_READ_PATH_PREFIX:Ljava/lang/String; = "/mnt/runtime/read/emulated/"

.field public static final EXTERNAL_WRITE_PATH_PREFIX:Ljava/lang/String; = "/mnt/runtime/write/emulated/"

.field public static final FILE_EXPLORER_ISOLATED_DEST_PATH:Ljava/lang/String; = "/storage/emulated/0/.FileExplorer"

.field public static final FILE_EXPLORER_ISOLATED_SOURCE_PATH:Ljava/lang/String; = "/mnt/runtime/default/emulated/0/.FileExplorer"

.field public static final GALLERY_ISOLATED_DEST_PATH:Ljava/lang/String; = "/storage/emulated/0/MIUI/Gallery/cloud/.secretAlbum"

.field public static final GALLERY_ISOLATED_SOURCE_PATH:Ljava/lang/String; = "/mnt/runtime/default/emulated/0/MIUI/Gallery/cloud/.secretAlbum"

.field public static final SPLIT_MULTI_PATH:Ljava/lang/String; = ";"

.field public static final SPLIT_PACKAGE:Ljava/lang/String; = ":"

.field public static final SPLIT_PATHS:Ljava/lang/String; = ">"

.field private static final TAG:Ljava/lang/String; = "StoragePolicyManager"

.field private static volatile sInstance:Lmiui/security/StoragePolicyManager;


# instance fields
.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mSupportIsolatedStorage:Z

.field mUserData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiui/security/StoragePolicyManager$PolicyData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/security/StoragePolicyManager;->mSupportIsolatedStorage:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/security/StoragePolicyManager;->mUserData:Ljava/util/Map;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lmiui/security/StoragePolicyManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    :try_start_13
    const-string v2, "com.miui.securitycenter"

    invoke-interface {v1, v2, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "beta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/security/StoragePolicyManager;->mSupportIsolatedStorage:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_27

    :cond_26
    goto :goto_2f

    :catch_27
    move-exception v0

    const-string v1, "StoragePolicyManager"

    const-string v2, "get securitycenter exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return-void
.end method

.method static synthetic access$000(Lmiui/security/StoragePolicyManager;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/security/StoragePolicyManager;->mSupportIsolatedStorage:Z

    return v0
.end method

.method public static getInstance()Lmiui/security/StoragePolicyManager;
    .registers 2

    sget-object v0, Lmiui/security/StoragePolicyManager;->sInstance:Lmiui/security/StoragePolicyManager;

    if-nez v0, :cond_17

    const-class v0, Lmiui/security/StoragePolicyManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/security/StoragePolicyManager;->sInstance:Lmiui/security/StoragePolicyManager;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/security/StoragePolicyManager;

    invoke-direct {v1}, Lmiui/security/StoragePolicyManager;-><init>()V

    sput-object v1, Lmiui/security/StoragePolicyManager;->sInstance:Lmiui/security/StoragePolicyManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lmiui/security/StoragePolicyManager;->sInstance:Lmiui/security/StoragePolicyManager;

    return-object v0
.end method

.method public static removeUnusedStoragePolicy(Landroid/util/Pair;I)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    array-length v5, v3

    if-eq v4, v5, :cond_22

    const-string v2, "StoragePolicyManager"

    const-string v4, "invalid paths length!"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_2d
    array-length v6, v1

    if-ge v5, v6, :cond_a4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_b2

    goto :goto_8b

    :pswitch_37
    aget-object v9, v1, v5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4a

    aget-object v9, v1, v5

    const-string v10, "/mnt/runtime/full/emulated/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4a

    move v7, v8

    :cond_4a
    move v6, v7

    goto :goto_8b

    :pswitch_4c
    aget-object v9, v1, v5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5f

    aget-object v9, v1, v5

    const-string v10, "/mnt/runtime/write/emulated/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5f

    move v7, v8

    :cond_5f
    move v6, v7

    goto :goto_8b

    :pswitch_61
    aget-object v9, v1, v5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_74

    aget-object v9, v1, v5

    const-string v10, "/mnt/runtime/read/emulated/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_74

    move v7, v8

    :cond_74
    move v6, v7

    goto :goto_8b

    :pswitch_76
    aget-object v9, v1, v5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_89

    aget-object v9, v1, v5

    const-string v10, "/mnt/runtime/default/emulated/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_89

    move v7, v8

    :cond_89
    move v6, v7

    nop

    :goto_8b
    if-eqz v6, :cond_a1

    aget-object v7, v1, v5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v1

    sub-int/2addr v7, v8

    if-ge v5, v7, :cond_a1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_a4
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_76
        :pswitch_61
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_37
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method private updateSingleStoragePolicyData(Ljava/lang/String;Lmiui/security/StoragePolicyManager$PolicyData;)V
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    if-nez p2, :cond_9

    goto :goto_33

    :cond_9
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    return-void

    :cond_14
    const/4 v1, 0x1

    aget-object v3, v0, v1

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v2, :cond_32

    new-instance v2, Landroid/util/Pair;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    aget-object v1, v3, v1

    invoke-direct {v2, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    iget-object v2, p2, Lmiui/security/StoragePolicyManager$PolicyData;->mMountMap:Ljava/util/Map;

    aget-object v4, v0, v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    return-void

    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public clearAllStoragePolicyData(I)V
    .registers 4

    iget-object v0, p0, Lmiui/security/StoragePolicyManager;->mUserData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getPolicyDataAsUser(IZ)Lmiui/security/StoragePolicyManager$PolicyData;
    .registers 6

    iget-object v0, p0, Lmiui/security/StoragePolicyManager;->mUserData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/StoragePolicyManager$PolicyData;

    if-nez v0, :cond_21

    if-nez p2, :cond_12

    const/4 v1, 0x0

    return-object v1

    :cond_12
    new-instance v1, Lmiui/security/StoragePolicyManager$PolicyData;

    invoke-direct {v1, p0}, Lmiui/security/StoragePolicyManager$PolicyData;-><init>(Lmiui/security/StoragePolicyManager;)V

    move-object v0, v1

    iget-object v1, p0, Lmiui/security/StoragePolicyManager;->mUserData:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v0
.end method

.method public getStoragePolicyPaths(ILjava/lang/String;)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/security/StoragePolicyManager;->getPolicyDataAsUser(IZ)Lmiui/security/StoragePolicyManager$PolicyData;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 v2, 0x0

    return-object v2

    :cond_d
    const/4 v2, 0x0

    iget-object v3, v1, Lmiui/security/StoragePolicyManager$PolicyData;->mAllExceptions:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v2, v1, Lmiui/security/StoragePolicyManager$PolicyData;->mAllPolicy:Landroid/util/Pair;

    :cond_18
    iget-object v3, v1, Lmiui/security/StoragePolicyManager$PolicyData;->mMountMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, v1, Lmiui/security/StoragePolicyManager$PolicyData;->mMountMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v2, :cond_2b

    return-object v3

    :cond_2b
    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    :cond_67
    return-object v2
.end method

.method public pushIsolatedAllPolicyData(Ljava/lang/String;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lmiui/security/StoragePolicyManager;->getPolicyDataAsUser(IZ)Lmiui/security/StoragePolicyManager$PolicyData;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lmiui/security/StoragePolicyManager$PolicyData;->mAllPolicy:Landroid/util/Pair;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v0, v1, Lmiui/security/StoragePolicyManager$PolicyData;->mAllExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_14
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    aget-object v0, v2, v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v1, Lmiui/security/StoragePolicyManager$PolicyData;->mAllPolicy:Landroid/util/Pair;

    :cond_2a
    iput-object p2, v1, Lmiui/security/StoragePolicyManager$PolicyData;->mAllExceptions:Ljava/util/List;

    return-void
.end method

.method public updateAllStoragePolicyData(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lmiui/security/StoragePolicyManager;->getPolicyDataAsUser(IZ)Lmiui/security/StoragePolicyManager$PolicyData;

    move-result-object v0

    iget-object v1, v0, Lmiui/security/StoragePolicyManager$PolicyData;->mMountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lmiui/security/StoragePolicyManager;->updateSingleStoragePolicyData(Ljava/lang/String;Lmiui/security/StoragePolicyManager$PolicyData;)V

    goto :goto_11

    :cond_21
    return-void
.end method

.method public updateSingleStoragePolicyData(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lmiui/security/StoragePolicyManager;->getPolicyDataAsUser(IZ)Lmiui/security/StoragePolicyManager$PolicyData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiui/security/StoragePolicyManager;->updateSingleStoragePolicyData(Ljava/lang/String;Lmiui/security/StoragePolicyManager$PolicyData;)V

    return-void
.end method
