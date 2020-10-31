.class public final synthetic Landroid/app/-$$Lambda$AppOpsManager$znmOchbf1jfrWSIXDpZNTtYuDQY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/AsyncNotedAppOp;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AsyncNotedAppOp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$AppOpsManager$znmOchbf1jfrWSIXDpZNTtYuDQY;->f$0:Landroid/app/AsyncNotedAppOp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$$Lambda$AppOpsManager$znmOchbf1jfrWSIXDpZNTtYuDQY;->f$0:Landroid/app/AsyncNotedAppOp;

    invoke-static {v0}, Landroid/app/AppOpsManager;->lambda$setOnOpNotedCallback$5(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method
