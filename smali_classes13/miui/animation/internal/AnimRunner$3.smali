.class Lmiui/animation/internal/AnimRunner$3;
.super Ljava/lang/Object;
.source "AnimRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/internal/AnimRunner;->end(Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/internal/AnimRunner;

.field final synthetic val$properties:[Lmiui/animation/property/FloatProperty;

.field final synthetic val$target:Lmiui/animation/IAnimTarget;


# direct methods
.method constructor <init>(Lmiui/animation/internal/AnimRunner;Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V
    .registers 4

    iput-object p1, p0, Lmiui/animation/internal/AnimRunner$3;->this$0:Lmiui/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiui/animation/internal/AnimRunner$3;->val$target:Lmiui/animation/IAnimTarget;

    iput-object p3, p0, Lmiui/animation/internal/AnimRunner$3;->val$properties:[Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/animation/internal/AnimRunner$3;->val$target:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiui/animation/IAnimTarget;->getAnimTask()Lmiui/animation/internal/AnimTask;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/internal/AnimRunner$3;->val$properties:[Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiui/animation/internal/AnimTask;->end([Lmiui/animation/property/FloatProperty;)V

    return-void
.end method
