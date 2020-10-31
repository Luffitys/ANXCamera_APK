.class final Landroid/app/ActivityView$StateCallbackAdapter;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Landroid/window/TaskEmbedder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateCallbackAdapter"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/ActivityView$StateCallback;

.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method private constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$StateCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/app/ActivityView$StateCallbackAdapter;->this$0:Landroid/app/ActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/ActivityView$StateCallbackAdapter;->mCallback:Landroid/app/ActivityView$StateCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$StateCallback;Landroid/app/ActivityView$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityView$StateCallbackAdapter;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$StateCallback;)V

    return-void
.end method


# virtual methods
.method public onBackPressedOnTaskRoot(I)V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView$StateCallbackAdapter;->mCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView$StateCallback;->onBackPressedOnTaskRoot(I)V

    return-void
.end method

.method public onInitialized()V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView$StateCallbackAdapter;->mCallback:Landroid/app/ActivityView$StateCallback;

    iget-object v1, p0, Landroid/app/ActivityView$StateCallbackAdapter;->this$0:Landroid/app/ActivityView;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView$StateCallback;->onActivityViewReady(Landroid/app/ActivityView;)V

    return-void
.end method

.method public onReleased()V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView$StateCallbackAdapter;->mCallback:Landroid/app/ActivityView$StateCallback;

    iget-object v1, p0, Landroid/app/ActivityView$StateCallbackAdapter;->this$0:Landroid/app/ActivityView;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView$StateCallback;->onActivityViewDestroyed(Landroid/app/ActivityView;)V

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Landroid/app/ActivityView$StateCallbackAdapter;->mCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityView$StateCallback;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView$StateCallbackAdapter;->mCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView$StateCallback;->onTaskMovedToFront(I)V

    return-void
.end method

.method public onTaskRemovalStarted(I)V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityView$StateCallbackAdapter;->mCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView$StateCallback;->onTaskRemovalStarted(I)V

    return-void
.end method

.method public onTaskVisibilityChanged(IZ)V
    .registers 4

    iget-object v0, p0, Landroid/app/ActivityView$StateCallbackAdapter;->mCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityView$StateCallback;->onTaskVisibilityChanged(IZ)V

    return-void
.end method
