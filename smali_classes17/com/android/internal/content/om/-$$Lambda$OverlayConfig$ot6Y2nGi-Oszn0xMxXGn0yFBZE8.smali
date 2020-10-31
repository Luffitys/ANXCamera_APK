.class public final synthetic Lcom/android/internal/content/om/-$$Lambda$OverlayConfig$ot6Y2nGi-Oszn0xMxXGn0yFBZE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/om/-$$Lambda$OverlayConfig$ot6Y2nGi-Oszn0xMxXGn0yFBZE8;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/content/om/-$$Lambda$OverlayConfig$ot6Y2nGi-Oszn0xMxXGn0yFBZE8;->f$0:Ljava/util/ArrayList;

    check-cast p1, Landroid/content/pm/parsing/ParsingPackageRead;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/android/internal/content/om/OverlayConfig;->lambda$getOverlayPackageInfos$3(Ljava/util/ArrayList;Landroid/content/pm/parsing/ParsingPackageRead;Ljava/lang/Boolean;)V

    return-void
.end method
