.class public final Lcom/google/android/play/core/splitinstall/SplitSessionLoaderSingleton;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sSplitLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/play/core/splitinstall/SplitSessionLoaderSingleton;->sSplitLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Lcom/google/android/play/core/splitinstall/SplitSessionLoader;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitSessionLoaderSingleton;->sSplitLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/SplitSessionLoader;

    return-object v0
.end method

.method public static set(Lcom/google/android/play/core/splitinstall/SplitSessionLoader;)V
    .locals 2

    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitSessionLoaderSingleton;->sSplitLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
