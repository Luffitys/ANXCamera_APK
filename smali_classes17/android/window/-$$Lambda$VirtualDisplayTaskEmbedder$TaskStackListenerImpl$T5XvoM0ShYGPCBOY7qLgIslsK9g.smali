.class public final synthetic Landroid/window/-$$Lambda$VirtualDisplayTaskEmbedder$TaskStackListenerImpl$T5XvoM0ShYGPCBOY7qLgIslsK9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;

.field public final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/-$$Lambda$VirtualDisplayTaskEmbedder$TaskStackListenerImpl$T5XvoM0ShYGPCBOY7qLgIslsK9g;->f$0:Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;

    iput-object p2, p0, Landroid/window/-$$Lambda$VirtualDisplayTaskEmbedder$TaskStackListenerImpl$T5XvoM0ShYGPCBOY7qLgIslsK9g;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/window/-$$Lambda$VirtualDisplayTaskEmbedder$TaskStackListenerImpl$T5XvoM0ShYGPCBOY7qLgIslsK9g;->f$0:Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;

    iget-object v1, p0, Landroid/window/-$$Lambda$VirtualDisplayTaskEmbedder$TaskStackListenerImpl$T5XvoM0ShYGPCBOY7qLgIslsK9g;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Landroid/window/VirtualDisplayTaskEmbedder$TaskStackListenerImpl;->lambda$onTaskDescriptionChanged$0$VirtualDisplayTaskEmbedder$TaskStackListenerImpl(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
