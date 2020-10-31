.class public final synthetic Landroid/media/-$$Lambda$MediaDrm$o5lC7TOBZhvtA31JYaLa-MogSw4;
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

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaDrm$o5lC7TOBZhvtA31JYaLa-MogSw4;->f$0:Landroid/media/MediaDrm;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaDrm$o5lC7TOBZhvtA31JYaLa-MogSw4;->f$0:Landroid/media/MediaDrm;

    check-cast p1, Landroid/media/MediaDrm$OnSessionLostStateListener;

    invoke-static {v0, p1}, Landroid/media/MediaDrm;->lambda$o5lC7TOBZhvtA31JYaLa-MogSw4(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnSessionLostStateListener;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
