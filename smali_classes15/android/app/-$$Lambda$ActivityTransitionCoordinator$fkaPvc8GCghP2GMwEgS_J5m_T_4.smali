.class public final synthetic Landroid/app/-$$Lambda$ActivityTransitionCoordinator$fkaPvc8GCghP2GMwEgS_J5m_T_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityTransitionCoordinator;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$ActivityTransitionCoordinator$fkaPvc8GCghP2GMwEgS_J5m_T_4;->f$0:Landroid/app/ActivityTransitionCoordinator;

    iput-object p2, p0, Landroid/app/-$$Lambda$ActivityTransitionCoordinator$fkaPvc8GCghP2GMwEgS_J5m_T_4;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$$Lambda$ActivityTransitionCoordinator$fkaPvc8GCghP2GMwEgS_J5m_T_4;->f$0:Landroid/app/ActivityTransitionCoordinator;

    iget-object v1, p0, Landroid/app/-$$Lambda$ActivityTransitionCoordinator$fkaPvc8GCghP2GMwEgS_J5m_T_4;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->lambda$scheduleSetSharedElementEnd$0$ActivityTransitionCoordinator(Ljava/util/ArrayList;)V

    return-void
.end method
