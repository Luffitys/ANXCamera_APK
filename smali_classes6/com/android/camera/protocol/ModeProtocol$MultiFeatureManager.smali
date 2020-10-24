.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0x3a1


# virtual methods
.method public abstract cancelInstallFeature(Ljava/lang/String;)V
.end method

.method public abstract checkAndShowDownloadConfirmDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Landroid/app/AlertDialog;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getFeatureSize(Ljava/lang/String;)J
.end method

.method public abstract getInstalledFeatures()Ljava/util/List;
.end method

.method public abstract hasFeatureInstalled(Ljava/lang/String;)Z
.end method

.method public abstract init()V
.end method

.method public abstract loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract showDownloadCancelDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Landroid/app/AlertDialog;
.end method

.method public abstract startInstallFeature(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
.end method
