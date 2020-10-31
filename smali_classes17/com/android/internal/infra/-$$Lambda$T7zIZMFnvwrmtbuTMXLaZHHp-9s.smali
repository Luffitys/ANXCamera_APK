.class public final synthetic Lcom/android/internal/infra/-$$Lambda$T7zIZMFnvwrmtbuTMXLaZHHp-9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/infra/-$$Lambda$T7zIZMFnvwrmtbuTMXLaZHHp-9s;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/infra/-$$Lambda$T7zIZMFnvwrmtbuTMXLaZHHp-9s;

    invoke-direct {v0}, Lcom/android/internal/infra/-$$Lambda$T7zIZMFnvwrmtbuTMXLaZHHp-9s;-><init>()V

    sput-object v0, Lcom/android/internal/infra/-$$Lambda$T7zIZMFnvwrmtbuTMXLaZHHp-9s;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$T7zIZMFnvwrmtbuTMXLaZHHp-9s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/internal/infra/ServiceConnector$Impl;

    check-cast p2, Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-virtual {p1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueueJobThread(Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method
