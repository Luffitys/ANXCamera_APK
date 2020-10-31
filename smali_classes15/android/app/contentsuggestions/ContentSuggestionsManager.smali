.class public final Landroid/app/contentsuggestions/ContentSuggestionsManager;
.super Ljava/lang/Object;
.source "ContentSuggestionsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_BITMAP:Ljava/lang/String; = "android.contentsuggestions.extra.BITMAP"

.field private static final SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

.field private final mUser:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/contentsuggestions/IContentSuggestionsManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iput p1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    return-void
.end method


# virtual methods
.method public classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;)V
    .registers 7

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_c

    sget-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string v1, "classifyContentSelections called, but no ContentSuggestionsManager configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    new-instance v2, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;

    invoke-direct {v2, p3, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_18

    nop

    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnabled()Z
    .registers 5

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_d
    iget-object v2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iget v3, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v2, v3, v0}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->isEnabled(ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_25
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_d .. :try_end_18} :catch_1c

    if-eqz v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    :catch_1c
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get the enable status."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_25
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_c

    sget-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyInteraction called, but no ContentSuggestionsManager configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, v1, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public provideContextImage(ILandroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_d

    sget-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "provideContextImage called, but no ContentSuggestionsManager configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    :try_start_d
    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, v1, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->provideContextImage(IILandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public provideContextImage(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_d

    sget-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "provideContextImage called, but no ContentSuggestionsManager configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    :try_start_d
    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, v1, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->provideContextBitmap(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;)V
    .registers 7

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_d

    sget-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "suggestContentSelections called, but no ContentSuggestionsManager configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    :try_start_d
    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    new-instance v2, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;

    invoke-direct {v2, p3, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
