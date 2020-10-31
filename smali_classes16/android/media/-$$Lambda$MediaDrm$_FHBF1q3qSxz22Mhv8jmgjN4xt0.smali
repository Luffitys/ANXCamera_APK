.class public final synthetic Landroid/media/-$$Lambda$MediaDrm$_FHBF1q3qSxz22Mhv8jmgjN4xt0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaDrm;

.field public final synthetic f$1:Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnKeyStatusChangeListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaDrm$_FHBF1q3qSxz22Mhv8jmgjN4xt0;->f$0:Landroid/media/MediaDrm;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaDrm$_FHBF1q3qSxz22Mhv8jmgjN4xt0;->f$1:Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaDrm$_FHBF1q3qSxz22Mhv8jmgjN4xt0;->f$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaDrm$_FHBF1q3qSxz22Mhv8jmgjN4xt0;->f$1:Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    check-cast p1, Landroid/media/MediaDrm$ListenerArgs;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm;->lambda$createOnKeyStatusChangeListener$1$MediaDrm(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm$ListenerArgs;)V

    return-void
.end method
