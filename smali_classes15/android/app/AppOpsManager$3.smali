.class Landroid/app/AppOpsManager$3;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/AppOpsManager;

.field final synthetic val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 4

    iput-object p1, p0, Landroid/app/AppOpsManager$3;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$opActiveChanged$0(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;Z)V
    .registers 6

    instance-of v0, p0, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;->onOpActiveChanged(IILjava/lang/String;Z)V

    :cond_a
    # getter for: Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppOpsManager;->access$600()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1b

    # getter for: Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppOpsManager;->access$600()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public opActiveChanged(IILjava/lang/String;Z)V
    .registers 13

    iget-object v0, p0, Landroid/app/AppOpsManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    new-instance v7, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;

    move-object v1, v7

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;-><init>(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;Z)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
