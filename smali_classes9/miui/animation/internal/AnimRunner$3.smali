.class Lmiui/animation/internal/AnimRunner$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/animation/internal/AnimRunner;

.field final synthetic val$properties:[Lmiui/animation/property/FloatProperty;

.field final synthetic val$target:Lmiui/animation/IAnimTarget;


# direct methods
.method constructor <init>(Lmiui/animation/internal/AnimRunner;Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/internal/AnimRunner$3;->this$0:Lmiui/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiui/animation/internal/AnimRunner$3;->val$target:Lmiui/animation/IAnimTarget;

    iput-object p3, p0, Lmiui/animation/internal/AnimRunner$3;->val$properties:[Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiui/animation/internal/AnimRunner$3;->val$target:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiui/animation/IAnimTarget;->getAnimTask()Lmiui/animation/internal/AnimTask;

    move-result-object v0

    iget-object p0, p0, Lmiui/animation/internal/AnimRunner$3;->val$properties:[Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, p0}, Lmiui/animation/internal/AnimTask;->end([Lmiui/animation/property/FloatProperty;)V

    return-void
.end method
