.class public final Lcom/google/android/play/core/splitinstall/LoadedSplitFetcherSingleton;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sInstalledSplitsFetcherRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/LoadedSplitFetcherSingleton;->sInstalledSplitsFetcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Lcom/google/android/play/core/splitinstall/LoadedSplitFetcher;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/splitinstall/LoadedSplitFetcherSingleton;->sInstalledSplitsFetcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/LoadedSplitFetcher;

    return-object v0
.end method

.method public static set(Lcom/google/android/play/core/splitinstall/LoadedSplitFetcher;)V
    .locals 2

    sget-object v0, Lcom/google/android/play/core/splitinstall/LoadedSplitFetcherSingleton;->sInstalledSplitsFetcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
