.class Lmiuix/animation/internal/AnimRunner$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/internal/AnimRunner;

.field final synthetic val$properties:[Lmiuix/animation/property/FloatProperty;

.field final synthetic val$target:Lmiuix/animation/IAnimTarget;


# direct methods
.method constructor <init>(Lmiuix/animation/internal/AnimRunner;Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/internal/AnimRunner$3;->this$0:Lmiuix/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiuix/animation/internal/AnimRunner$3;->val$target:Lmiuix/animation/IAnimTarget;

    iput-object p3, p0, Lmiuix/animation/internal/AnimRunner$3;->val$properties:[Lmiuix/animation/property/FloatProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner$3;->val$target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getAnimTask()Lmiuix/animation/internal/AnimTask;

    move-result-object v0

    iget-object p0, p0, Lmiuix/animation/internal/AnimRunner$3;->val$properties:[Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, p0}, Lmiuix/animation/internal/AnimTask;->end([Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method
