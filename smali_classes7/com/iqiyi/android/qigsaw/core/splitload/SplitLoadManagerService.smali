.class public Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;
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

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Landroid/content/Context;IZZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;
    .locals 9

    new-instance v8, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerImpl;-><init>(Landroid/content/Context;IZZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v8
.end method

.method public static getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Have you invoke SplitLoadManagerService#install(Context) method?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasInstance()Z
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static install(Landroid/content/Context;IZZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static/range {p0 .. p6}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->create(Landroid/content/Context;IZZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
