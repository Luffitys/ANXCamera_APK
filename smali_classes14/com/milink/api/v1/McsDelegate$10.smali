.class Lcom/milink/api/v1/McsDelegate$10;
.super Ljava/lang/Object;
.source "McsDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/api/v1/McsDelegate;->onPrevAudio(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/api/v1/McsDelegate;

.field final synthetic val$isAuto:Z


# direct methods
.method constructor <init>(Lcom/milink/api/v1/McsDelegate;Z)V
    .registers 3

    iput-object p1, p0, Lcom/milink/api/v1/McsDelegate$10;->this$0:Lcom/milink/api/v1/McsDelegate;

    iput-boolean p2, p0, Lcom/milink/api/v1/McsDelegate$10;->val$isAuto:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate$10;->this$0:Lcom/milink/api/v1/McsDelegate;

    # getter for: Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;
    invoke-static {v0}, Lcom/milink/api/v1/McsDelegate;->access$000(Lcom/milink/api/v1/McsDelegate;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate$10;->this$0:Lcom/milink/api/v1/McsDelegate;

    # getter for: Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;
    invoke-static {v0}, Lcom/milink/api/v1/McsDelegate;->access$000(Lcom/milink/api/v1/McsDelegate;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    iget-boolean v1, p0, Lcom/milink/api/v1/McsDelegate$10;->val$isAuto:Z

    invoke-interface {v0, v1}, Lcom/milink/api/v1/MilinkClientManagerDelegate;->onPrevAudio(Z)V

    :cond_13
    return-void
.end method
