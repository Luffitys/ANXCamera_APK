.class public final synthetic Landroid/media/-$$Lambda$MediaDrm$IvEWhXQgSYABwC6_1bdnhTJ4V2I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaDrm;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaDrm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaDrm$IvEWhXQgSYABwC6_1bdnhTJ4V2I;->f$0:Landroid/media/MediaDrm;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaDrm$IvEWhXQgSYABwC6_1bdnhTJ4V2I;->f$0:Landroid/media/MediaDrm;

    check-cast p1, Landroid/media/MediaDrm$OnEventListener;

    invoke-static {v0, p1}, Landroid/media/MediaDrm;->lambda$IvEWhXQgSYABwC6_1bdnhTJ4V2I(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnEventListener;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
