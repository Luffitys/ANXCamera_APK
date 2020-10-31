.class public final synthetic Lcom/android/internal/infra/-$$Lambda$XuWfs8-IsKaNygi8YjlVGjedkIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/infra/-$$Lambda$XuWfs8-IsKaNygi8YjlVGjedkIw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/infra/-$$Lambda$XuWfs8-IsKaNygi8YjlVGjedkIw;

    invoke-direct {v0}, Lcom/android/internal/infra/-$$Lambda$XuWfs8-IsKaNygi8YjlVGjedkIw;-><init>()V

    sput-object v0, Lcom/android/internal/infra/-$$Lambda$XuWfs8-IsKaNygi8YjlVGjedkIw;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$XuWfs8-IsKaNygi8YjlVGjedkIw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbindJobThread()V

    return-void
.end method
