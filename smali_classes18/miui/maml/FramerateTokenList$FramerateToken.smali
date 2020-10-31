.class public Lmiui/maml/FramerateTokenList$FramerateToken;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/FramerateTokenList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FramerateToken"
.end annotation


# instance fields
.field public mFramerate:F

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/FramerateTokenList;


# direct methods
.method public constructor <init>(Lmiui/maml/FramerateTokenList;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->this$0:Lmiui/maml/FramerateTokenList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFramerate()F
    .registers 2

    iget v0, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    return v0
.end method

.method public requestFramerate(F)V
    .registers 4

    iget v0, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_20

    iget-object v0, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->this$0:Lmiui/maml/FramerateTokenList;

    # getter for: Lmiui/maml/FramerateTokenList;->mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;
    invoke-static {v0}, Lmiui/maml/FramerateTokenList;->access$000(Lmiui/maml/FramerateTokenList;)Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->this$0:Lmiui/maml/FramerateTokenList;

    # getter for: Lmiui/maml/FramerateTokenList;->mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;
    invoke-static {v0}, Lmiui/maml/FramerateTokenList;->access$000(Lmiui/maml/FramerateTokenList;)Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    move-result-object v0

    iget v1, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    invoke-interface {v0, v1, p1}, Lmiui/maml/FramerateTokenList$FramerateChangeListener;->onFrameRateChage(FF)V

    :cond_19
    iput p1, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    iget-object v0, p0, Lmiui/maml/FramerateTokenList$FramerateToken;->this$0:Lmiui/maml/FramerateTokenList;

    # invokes: Lmiui/maml/FramerateTokenList;->onChange()V
    invoke-static {v0}, Lmiui/maml/FramerateTokenList;->access$100(Lmiui/maml/FramerateTokenList;)V

    :cond_20
    return-void
.end method
