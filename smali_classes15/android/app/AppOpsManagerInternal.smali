.class public abstract Landroid/app/AppOpsManagerInternal;
.super Ljava/lang/Object;
.source "AppOpsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
.end method

.method public abstract setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
.end method

.method public abstract setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V
.end method

.method public abstract updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method
