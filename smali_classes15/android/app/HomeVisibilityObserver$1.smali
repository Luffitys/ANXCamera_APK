.class Landroid/app/HomeVisibilityObserver$1;
.super Landroid/app/IProcessObserver$Stub;
.source "HomeVisibilityObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/HomeVisibilityObserver;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/HomeVisibilityObserver;


# direct methods
.method constructor <init>(Landroid/app/HomeVisibilityObserver;)V
    .registers 2

    iput-object p1, p0, Landroid/app/HomeVisibilityObserver$1;->this$0:Landroid/app/HomeVisibilityObserver;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 7

    iget-object v0, p0, Landroid/app/HomeVisibilityObserver$1;->this$0:Landroid/app/HomeVisibilityObserver;

    # invokes: Landroid/app/HomeVisibilityObserver;->isHomeActivityVisible()Z
    invoke-static {v0}, Landroid/app/HomeVisibilityObserver;->access$000(Landroid/app/HomeVisibilityObserver;)Z

    move-result v0

    iget-object v1, p0, Landroid/app/HomeVisibilityObserver$1;->this$0:Landroid/app/HomeVisibilityObserver;

    iget-boolean v1, v1, Landroid/app/HomeVisibilityObserver;->mIsHomeActivityVisible:Z

    if-eq v1, v0, :cond_17

    iget-object v1, p0, Landroid/app/HomeVisibilityObserver$1;->this$0:Landroid/app/HomeVisibilityObserver;

    iput-boolean v0, v1, Landroid/app/HomeVisibilityObserver;->mIsHomeActivityVisible:Z

    iget-object v1, p0, Landroid/app/HomeVisibilityObserver$1;->this$0:Landroid/app/HomeVisibilityObserver;

    iget-boolean v2, v1, Landroid/app/HomeVisibilityObserver;->mIsHomeActivityVisible:Z

    invoke-virtual {v1, v2}, Landroid/app/HomeVisibilityObserver;->onHomeVisibilityChanged(Z)V

    :cond_17
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    return-void
.end method
