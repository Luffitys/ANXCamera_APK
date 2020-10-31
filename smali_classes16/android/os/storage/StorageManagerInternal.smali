.class public abstract Landroid/os/storage/StorageManagerInternal;
.super Ljava/lang/Object;
.source "StorageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManagerInternal$ResetListener;,
        Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V
.end method

.method public abstract addResetListener(Landroid/os/storage/StorageManagerInternal$ResetListener;)V
.end method

.method public abstract getExternalStorageMountMode(ILjava/lang/String;)I
.end method

.method public abstract hasLegacyExternalStorage(I)Z
.end method

.method public abstract isExternalStorageService(I)Z
.end method

.method public abstract onAppOpsChanged(IILjava/lang/String;I)V
.end method

.method public abstract onExternalStoragePolicyChanged(ILjava/lang/String;)V
.end method

.method public abstract prepareAppDataAfterInstall(Ljava/lang/String;I)V
.end method

.method public abstract prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract remountUidForPath(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract resetUser(I)V
.end method
