.class public final synthetic Landroid/window/-$$Lambda$TaskOrganizerTaskEmbedder$TaskOrganizerImpl$lWy60hv4-xWQkR7DgDtDHy9IHHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;

.field public final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/-$$Lambda$TaskOrganizerTaskEmbedder$TaskOrganizerImpl$lWy60hv4-xWQkR7DgDtDHy9IHHc;->f$0:Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;

    iput-object p2, p0, Landroid/window/-$$Lambda$TaskOrganizerTaskEmbedder$TaskOrganizerImpl$lWy60hv4-xWQkR7DgDtDHy9IHHc;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/window/-$$Lambda$TaskOrganizerTaskEmbedder$TaskOrganizerImpl$lWy60hv4-xWQkR7DgDtDHy9IHHc;->f$0:Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;

    iget-object v1, p0, Landroid/window/-$$Lambda$TaskOrganizerTaskEmbedder$TaskOrganizerImpl$lWy60hv4-xWQkR7DgDtDHy9IHHc;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Landroid/window/TaskOrganizerTaskEmbedder$TaskOrganizerImpl;->lambda$onTaskInfoChanged$1$TaskOrganizerTaskEmbedder$TaskOrganizerImpl(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
