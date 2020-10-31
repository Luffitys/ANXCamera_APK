.class public final synthetic Landroid/view/-$$Lambda$WindowManagerGlobal$2bR3FsEm4EdRwuXfttH0wA2xOW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$WindowManagerGlobal$2bR3FsEm4EdRwuXfttH0wA2xOW4;->f$0:Landroid/view/ViewRootImpl;

    iput-boolean p2, p0, Landroid/view/-$$Lambda$WindowManagerGlobal$2bR3FsEm4EdRwuXfttH0wA2xOW4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$WindowManagerGlobal$2bR3FsEm4EdRwuXfttH0wA2xOW4;->f$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, p0, Landroid/view/-$$Lambda$WindowManagerGlobal$2bR3FsEm4EdRwuXfttH0wA2xOW4;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/WindowManagerGlobal;->lambda$setStoppedState$0(Landroid/view/ViewRootImpl;Z)V

    return-void
.end method
