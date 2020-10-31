.class Landroid/hardware/radio/ProgramList$1;
.super Landroid/hardware/radio/ProgramList$ListCallback;
.source "ProgramList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/radio/ProgramList;->registerListCallback(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$ListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/radio/ProgramList;

.field final synthetic val$callback:Landroid/hardware/radio/ProgramList$ListCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/hardware/radio/ProgramList;Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$ListCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$1;->this$0:Landroid/hardware/radio/ProgramList;

    iput-object p2, p0, Landroid/hardware/radio/ProgramList$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/radio/ProgramList$1;->val$callback:Landroid/hardware/radio/ProgramList$ListCallback;

    invoke-direct {p0}, Landroid/hardware/radio/ProgramList$ListCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onItemChanged$0(Landroid/hardware/radio/ProgramList$ListCallback;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramList$ListCallback;->onItemChanged(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method

.method static synthetic lambda$onItemRemoved$1(Landroid/hardware/radio/ProgramList$ListCallback;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramList$ListCallback;->onItemRemoved(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method


# virtual methods
.method public onItemChanged(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$1;->val$callback:Landroid/hardware/radio/ProgramList$ListCallback;

    new-instance v2, Landroid/hardware/radio/-$$Lambda$ProgramList$1$DVvry5MfhR6n8H2EZn67rvuhllI;

    invoke-direct {v2, v1, p1}, Landroid/hardware/radio/-$$Lambda$ProgramList$1$DVvry5MfhR6n8H2EZn67rvuhllI;-><init>(Landroid/hardware/radio/ProgramList$ListCallback;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onItemRemoved(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$1;->val$callback:Landroid/hardware/radio/ProgramList$ListCallback;

    new-instance v2, Landroid/hardware/radio/-$$Lambda$ProgramList$1$a_xWqo5pESOZhcJIWvpiCd2AXmY;

    invoke-direct {v2, v1, p1}, Landroid/hardware/radio/-$$Lambda$ProgramList$1$a_xWqo5pESOZhcJIWvpiCd2AXmY;-><init>(Landroid/hardware/radio/ProgramList$ListCallback;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
