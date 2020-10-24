.class public interface abstract Lcom/google/android/play/core/splitinstall/SplitInstallManager;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract cancelInstall(I)Lcom/google/android/play/core/tasks/Task;
.end method

.method public abstract deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
.end method

.method public abstract deferredUninstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
.end method

.method public abstract getInstalledModules()Ljava/util/Set;
.end method

.method public abstract getSessionState(I)Lcom/google/android/play/core/tasks/Task;
.end method

.method public abstract getSessionStates()Lcom/google/android/play/core/tasks/Task;
.end method

.method public abstract registerListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
.end method

.method public abstract startConfirmationDialogForResult(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;Landroid/app/Activity;I)Z
.end method

.method public abstract startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;
.end method

.method public abstract unregisterListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
.end method
