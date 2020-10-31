.class public final synthetic Landroid/view/-$$Lambda$ViewRootImpl$DJd0VUYJgsebcnSohO6h8zc_ONI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;ZLjava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewRootImpl$DJd0VUYJgsebcnSohO6h8zc_ONI;->f$0:Landroid/view/ViewRootImpl;

    iput-boolean p2, p0, Landroid/view/-$$Lambda$ViewRootImpl$DJd0VUYJgsebcnSohO6h8zc_ONI;->f$1:Z

    iput-object p3, p0, Landroid/view/-$$Lambda$ViewRootImpl$DJd0VUYJgsebcnSohO6h8zc_ONI;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewRootImpl$DJd0VUYJgsebcnSohO6h8zc_ONI;->f$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, p0, Landroid/view/-$$Lambda$ViewRootImpl$DJd0VUYJgsebcnSohO6h8zc_ONI;->f$1:Z

    iget-object v2, p0, Landroid/view/-$$Lambda$ViewRootImpl$DJd0VUYJgsebcnSohO6h8zc_ONI;->f$2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->lambda$performDraw$1$ViewRootImpl(ZLjava/util/ArrayList;)V

    return-void
.end method
