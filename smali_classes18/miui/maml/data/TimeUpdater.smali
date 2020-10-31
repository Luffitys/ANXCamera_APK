.class public Lmiui/maml/data/TimeUpdater;
.super Ljava/lang/Object;
.source "TimeUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/data/DateTimeVariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/data/DateTimeVariableUpdater;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/data/TimeUpdater;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/TimeUpdater;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/DateTimeVariableUpdater;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    :cond_f
    return-void
.end method
