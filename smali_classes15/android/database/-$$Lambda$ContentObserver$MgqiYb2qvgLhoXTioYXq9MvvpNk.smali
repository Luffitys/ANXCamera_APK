.class public final synthetic Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/database/ContentObserver;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/Collection;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroid/database/ContentObserver;ZLjava/util/Collection;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;->f$0:Landroid/database/ContentObserver;

    iput-boolean p2, p0, Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;->f$1:Z

    iput-object p3, p0, Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;->f$2:Ljava/util/Collection;

    iput p4, p0, Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;->f$3:I

    iput p5, p0, Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;->f$0:Landroid/database/ContentObserver;

    iget-boolean v1, p0, Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;->f$1:Z

    iget-object v2, p0, Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;->f$2:Ljava/util/Collection;

    iget v3, p0, Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;->f$3:I

    iget v4, p0, Landroid/database/-$$Lambda$ContentObserver$MgqiYb2qvgLhoXTioYXq9MvvpNk;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/ContentObserver;->lambda$dispatchChange$0$ContentObserver(ZLjava/util/Collection;II)V

    return-void
.end method
