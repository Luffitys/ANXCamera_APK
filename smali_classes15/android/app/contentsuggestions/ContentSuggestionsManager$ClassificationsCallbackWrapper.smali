.class final Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;
.super Landroid/app/contentsuggestions/IClassificationsCallback$Stub;
.source "ContentSuggestionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/ContentSuggestionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassificationsCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/contentsuggestions/IClassificationsCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    iput-object p2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onContentClassificationsAvailable$0$ContentSuggestionsManager$ClassificationsCallbackWrapper(ILjava/util/List;)V
    .registers 4

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mCallback:Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;->onContentClassificationsAvailable(ILjava/util/List;)V

    return-void
.end method

.method public onContentClassificationsAvailable(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentClassification;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$ClassificationsCallbackWrapper$bS71fhWJJl2gObzWDnBMzvYmM5w;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/contentsuggestions/-$$Lambda$ContentSuggestionsManager$ClassificationsCallbackWrapper$bS71fhWJJl2gObzWDnBMzvYmM5w;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;ILjava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
