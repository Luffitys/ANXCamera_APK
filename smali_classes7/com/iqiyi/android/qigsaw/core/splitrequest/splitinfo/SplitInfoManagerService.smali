.class public Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sReference:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSplitInfoManager(Landroid/content/Context;Z)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;
    .locals 0

    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManagerImpl;->createSplitInfoVersionManager(Landroid/content/Context;Z)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;

    move-result-object p0

    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;

    invoke-direct {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;-><init>()V

    invoke-virtual {p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->attach(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;)V

    return-object p1
.end method

.method public static getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    return-object v0
.end method

.method public static install(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->createSplitInfoManager(Landroid/content/Context;Z)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
