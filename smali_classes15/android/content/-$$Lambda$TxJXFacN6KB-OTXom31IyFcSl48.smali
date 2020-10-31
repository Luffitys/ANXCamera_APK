.class public final synthetic Landroid/content/-$$Lambda$TxJXFacN6KB-OTXom31IyFcSl48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/-$$Lambda$TxJXFacN6KB-OTXom31IyFcSl48;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/content/-$$Lambda$TxJXFacN6KB-OTXom31IyFcSl48;->f$0:Ljava/util/Collection;

    check-cast p1, Landroid/net/Uri;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
